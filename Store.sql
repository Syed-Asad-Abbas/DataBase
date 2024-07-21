CREATE PROCEDURE InsertUser
    @username VARCHAR(20),
    @email VARCHAR(50),
    @password VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[users] ([username], [email], [password])
    VALUES (@username, @email, @password)
END;

-- Create stored procedure for updating user information
CREATE PROCEDURE UpdateUser
    @user_id INT,
    @username VARCHAR(20),
    @email VARCHAR(50),
    @password VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[users]
    SET [username] = @username,
        [email] = @email,
        [password] = @password
    WHERE [user_id] = @user_id
END;

-- Create stored procedure for deleting a user
CREATE PROCEDURE DeleteUser
    @user_id INT
AS
BEGIN
    DELETE FROM [dbo].[users]
    WHERE [user_id] = @user_id
END;

CREATE PROCEDURE InsertAdmin
    @admin_uname VARCHAR(20),
    @admin_email VARCHAR(50),
    @admin_pwd VARCHAR(100)
AS
BEGIN
    INSERT INTO [dbo].[admin] ([admin_uname], [admin_email], [admin_pwd])
    VALUES (@admin_uname, @admin_email, @admin_pwd)
END;

-- Create stored procedure for updating admin information
CREATE PROCEDURE UpdateAdmin
    @admin_id INT,
    @admin_uname VARCHAR(20),
    @admin_email VARCHAR(50),
    @admin_pwd VARCHAR(100)
AS
BEGIN
    UPDATE [dbo].[admin]
    SET [admin_uname] = @admin_uname,
        [admin_email] = @admin_email,
        [admin_pwd] = @admin_pwd
    WHERE [admin_id] = @admin_id
END;
exec UpdateAdmin 1,'Mehdi','mm','123'
-- Create stored procedure for deleting an admin
CREATE PROCEDURE DeleteAdmin
    @admin_id INT
AS
BEGIN
    DELETE FROM [dbo].[admin]
    WHERE [admin_id] = @admin_id
END;

CREATE PROCEDURE InsertAirline
    @name VARCHAR(20),
    @seats INT
AS
BEGIN
    INSERT INTO [dbo].[airline] ([name], [seats])
    VALUES (@name, @seats)
END;

-- Create stored procedure for updating airline information
CREATE PROCEDURE UpdateAirline
    @airline_id INT,
    @name VARCHAR(20),
    @seats INT
AS
BEGIN
    UPDATE [dbo].[airline]
    SET [name] = @name,
        [seats] = @seats
    WHERE [airline_id] = @airline_id
END;

-- Create stored procedure for deleting an airline
CREATE PROCEDURE DeleteAirline
    @airline_id INT
AS
BEGIN
    DELETE FROM [dbo].[airline]
    WHERE [airline_id] = @airline_id
END;

CREATE PROCEDURE InsertFeedback
    @email VARCHAR(50),
    @q1 VARCHAR(250),
    @q2 VARCHAR(20),
    @q3 VARCHAR(250),
    @rate INT
AS
BEGIN
    INSERT INTO [dbo].[feedback] ([email], [q1], [q2], [q3], [rate])
    VALUES (@email, @q1, @q2, @q3, @rate)
END;

-- Create stored procedure for deleting feedback
CREATE PROCEDURE DeleteFeedback
    @feed_id INT
AS
BEGIN
    DELETE FROM [dbo].[feedback]
    WHERE [feed_id] = @feed_id
END;

CREATE PROCEDURE InsertFlight
    @admin_id INT,
    @arrival DATETIME,
    @departure DATETIME,
    @Destination VARCHAR(20),
    @source VARCHAR(20),
    @airline VARCHAR(20),
    @Seats VARCHAR(110),
    @duration VARCHAR(20),
    @Price INT,
    @status VARCHAR(6) = NULL,
    @issue VARCHAR(50) = NULL,
    @last_seat VARCHAR(5) = '',
    @bus_seats INT = 20,
    @last_bus_seat VARCHAR(5) = ''
AS
BEGIN
    INSERT INTO [dbo].[flight] ([admin_id], [arrival], [departure], [Destination], [source], [airline], [Seats], [duration], [Price], [status], [issue], [last_seat], [bus_seats], [last_bus_seat])
    VALUES (@admin_id, @arrival, @departure, @Destination, @source, @airline, @Seats, @duration, @Price, @status, @issue, @last_seat, @bus_seats, @last_bus_seat)
END;

-- Create stored procedure for updating flight information
CREATE PROCEDURE UpdateFlight
    @flight_id INT,
    @admin_id INT,
    @arrival DATETIME,
    @departure DATETIME,
    @Destination VARCHAR(20),
    @source VARCHAR(20),
    @airline VARCHAR(20),
    @Seats VARCHAR(110),
    @duration VARCHAR(20),
    @Price INT,
    @status VARCHAR(6) = NULL,
    @issue VARCHAR(50) = NULL,
    @last_seat VARCHAR(5) = '',
    @bus_seats INT = 20,
    @last_bus_seat VARCHAR(5) = ''
AS
BEGIN
    UPDATE [dbo].[flight]
    SET [admin_id] = @admin_id,
        [arrival] = @arrival,
        [departure] = @departure,
        [Destination] = @Destination,
        [source] = @source,
        [airline] = @airline,
        [Seats] = @Seats,
        [duration] = @duration,
        [Price] = @Price,
        [status] = @status,
        [issue] = @issue,
        [last_seat] = @last_seat,
        [bus_seats] = @bus_seats,
        [last_bus_seat] = @last_bus_seat
    WHERE [flight_id] = @flight_id
END;

-- Create stored procedure for deleting a flight
CREATE PROCEDURE DeleteFlight
    @flight_id INT
AS
BEGIN
    DELETE FROM [dbo].[flight]
    WHERE [flight_id] = @flight_id
END;

CREATE PROCEDURE InsertPassengerProfile
    @user_id INT,
    @flight_id INT,
    @mobile VARCHAR(110),
    @dob DATETIME,
    @f_name VARCHAR(20) = NULL,
    @m_name VARCHAR(20) = NULL,
    @l_name VARCHAR(20) = NULL
AS
BEGIN
    INSERT INTO [dbo].[passenger_profile] ([user_id], [flight_id], [mobile], [dob], [f_name], [m_name], [l_name])
    VALUES (@user_id, @flight_id, @mobile, @dob, @f_name, @m_name, @l_name)
END;

-- Create stored procedure for updating passenger profile information
CREATE PROCEDURE UpdatePassengerProfile
    @passenger_id INT,
    @user_id INT,
    @flight_id INT,
    @mobile VARCHAR(110),
    @dob DATETIME,
    @f_name VARCHAR(20) = NULL,
    @m_name VARCHAR(20) = NULL,
    @l_name VARCHAR(20) = NULL
AS
BEGIN
    UPDATE [dbo].[passenger_profile]
    SET [user_id] = @user_id,
        [flight_id] = @flight_id,
        [mobile] = @mobile,
        [dob] = @dob,
        [f_name] = @f_name,
        [m_name] = @m_name,
        [l_name] = @l_name
    WHERE [passenger_id] = @passenger_id
END;

-- Create stored procedure for deleting a passenger profile
CREATE PROCEDURE DeletePassengerProfile
    @passenger_id INT
AS
BEGIN
    DELETE FROM [dbo].[passenger_profile]
    WHERE [passenger_id] = @passenger_id
END;

CREATE PROCEDURE InsertPayment
    @card_no VARCHAR(16),
    @user_id INT,
    @flight_id INT,
    @expire_date VARCHAR(5),
    @amount INT
AS
BEGIN
    INSERT INTO [dbo].[payment] ([card_no], [user_id], [flight_id], [expire_date], [amount])
    VALUES (@card_no, @user_id, @flight_id, @expire_date, @amount)
END;

-- Create stored procedure for updating payment information
CREATE PROCEDURE UpdatePayment
    @card_no VARCHAR(16),
    @user_id INT,
    @flight_id INT,
    @expire_date VARCHAR(5),
    @amount INT
AS
BEGIN
    UPDATE [dbo].[payment]
    SET [user_id] = @user_id,
        [flight_id] = @flight_id,
        [expire_date] = @expire_date,
        [amount] = @amount
    WHERE [card_no] = @card_no
END;

-- Create stored procedure for deleting a payment
CREATE PROCEDURE DeletePayment
    @card_no VARCHAR(16)
AS
BEGIN
    DELETE FROM [dbo].[payment]
    WHERE [card_no] = @card_no
END;

CREATE PROCEDURE InsertTicket
    @passenger_id INT,
    @flight_id INT,
    @user_id INT,
    @seat_no VARCHAR(10),
    @cost INT,
    @class VARCHAR(3)
AS
BEGIN
    INSERT INTO [dbo].[ticket] ([passenger_id], [flight_id], [user_id], [seat_no], [cost], [class])
    VALUES (@passenger_id, @flight_id, @user_id, @seat_no, @cost, @class)
END;

-- Create stored procedure for updating ticket information
CREATE PROCEDURE UpdateTicket
    @ticket_id INT,
    @passenger_id INT,
    @flight_id INT,
    @user_id INT,
    @seat_no VARCHAR(10),
    @cost INT,
    @class VARCHAR(3)
AS
BEGIN
    UPDATE [dbo].[ticket]
    SET [passenger_id] = @passenger_id,
        [flight_id] = @flight_id,
        [user_id] = @user_id,
        [seat_no] = @seat_no,
        [cost] = @cost,
        [class] = @class
    WHERE [ticket_id] = @ticket_id
END;

-- Create stored procedure for deleting a ticket
CREATE PROCEDURE DeleteTicket
    @ticket_id INT
AS
BEGIN
    DELETE FROM [dbo].[ticket]
    WHERE [ticket_id] = @ticket_id
END;