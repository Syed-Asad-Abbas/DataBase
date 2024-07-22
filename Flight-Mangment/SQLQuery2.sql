-- Create table in SQL Server
CREATE TABLE [users] (
  [user_id] INT NOT NULL IDENTITY(1,1),
  [username] VARCHAR(20) NOT NULL,
  [email] VARCHAR(50) NOT NULL,
  [password] VARCHAR(100) NOT NULL,
  CONSTRAINT PK_users PRIMARY KEY ([user_id])
);

-- Insert data into the users table

CREATE TABLE [admin] (
  [admin_id] INT IDENTITY(1,1) NOT NULL,
  [admin_uname] VARCHAR(20) NOT NULL,
  [admin_email] VARCHAR(50) NOT NULL,
  [admin_pwd] VARCHAR(100) NOT NULL,
  CONSTRAINT PK_admin PRIMARY KEY ([admin_id])
);


-- Create table in SQL Server
CREATE TABLE [airline] (
  [airline_id] INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(20) NOT NULL,
  [seats] INT NOT NULL,
  CONSTRAINT PK_airline PRIMARY KEY ([airline_id])
);




-- Create table in SQL Server
CREATE TABLE [feedback] (
  [feed_id] INT IDENTITY(1,1) NOT NULL,
  [email] VARCHAR(50) NOT NULL,
  [q1] VARCHAR(250) NOT NULL,
  [q2] VARCHAR(20) NOT NULL,
  [q3] VARCHAR(250) NOT NULL,
  [rate] INT NOT NULL,
  CONSTRAINT PK_feedback PRIMARY KEY ([feed_id])
);
-- Create table in SQL Server
CREATE TABLE [flight] (
  [flight_id] INT IDENTITY(1,1) NOT NULL,
  [admin_id] INT NOT NULL,
  [arrival] DATETIME NOT NULL,
  [departure] DATETIME NOT NULL,
  [Destination] VARCHAR(20) NOT NULL,
  [source] VARCHAR(20) NOT NULL,
  [airline] VARCHAR(20) NOT NULL,
  [Seats] VARCHAR(110) NOT NULL,
  [duration] VARCHAR(20) NOT NULL,
  [Price] INT NOT NULL,
  [status] VARCHAR(6) NULL,
  [issue] VARCHAR(50) NULL,
  [last_seat] VARCHAR(5) DEFAULT '',
  [bus_seats] INT DEFAULT 20,
  [last_bus_seat] VARCHAR(5) DEFAULT '',
  CONSTRAINT PK_flight PRIMARY KEY ([flight_id]),
  CONSTRAINT FK_admin FOREIGN KEY ([admin_id]) REFERENCES [admin] ([admin_id])
);


-- Create table in SQL Server
CREATE TABLE [passenger_profile] (
  [passenger_id] INT IDENTITY(1,1) NOT NULL,
  [user_id] INT NOT NULL,
  [flight_id] INT NOT NULL,
  [mobile] VARCHAR(110) NOT NULL,
  [dob] DATETIME NOT NULL,
  [f_name] VARCHAR(20) NULL,
  [m_name] VARCHAR(20) NULL,
  [l_name] VARCHAR(20) NULL,
  CONSTRAINT PK_passenger_profile PRIMARY KEY ([passenger_id]),
  CONSTRAINT FK_user FOREIGN KEY ([user_id]) REFERENCES [users] ([user_id]),
  CONSTRAINT FK_flight FOREIGN KEY ([flight_id]) REFERENCES [flight] ([flight_id])
);


-- Create table in SQL Server
CREATE TABLE [payment] (
  [card_no] VARCHAR(16) NOT NULL,
  [user_id] INT NOT NULL,
  [flight_id] INT NOT NULL,
  [expire_date] VARCHAR(5) NULL,
  [amount] INT NOT NULL,
  CONSTRAINT PK_payment PRIMARY KEY ([card_no]),
  CONSTRAINT FK_user_payment FOREIGN KEY ([user_id]) REFERENCES [users] ([user_id]),
  CONSTRAINT FK_flight_payment FOREIGN KEY ([flight_id]) REFERENCES [flight] ([flight_id])
);


-- Create tables
CREATE TABLE [ticket] (
  [ticket_id] INT NOT NULL IDENTITY(1,1),
  [passenger_id] INT NOT NULL,
  [flight_id] INT NOT NULL,
  [user_id] INT NOT NULL,
  [seat_no] VARCHAR(10) NOT NULL,
  [cost] INT NOT NULL,
  [class] VARCHAR(3) NOT NULL,
  CONSTRAINT PK_ticket PRIMARY KEY ([ticket_id]),
  CONSTRAINT FK_ticket_passenger FOREIGN KEY ([passenger_id]) REFERENCES [passenger_profile] ([passenger_id]) ON DELETE CASCADE,
  CONSTRAINT FK_ticket_flight FOREIGN KEY ([flight_id]) REFERENCES [flight] ([flight_id]),
  CONSTRAINT FK_ticket_user FOREIGN KEY ([user_id]) REFERENCES [users] ([user_id])
);




