CREATE TRIGGER UserLoginTrigger
ON [users]
AFTER INSERT
AS
BEGIN

    INSERT INTO UserLoginLog (user_id, login_time)
    SELECT user_id, GETDATE() FROM inserted;
END;



CREATE TRIGGER FlightDeletionTrigger
ON [flight]
INSTEAD OF DELETE
AS
BEGIN

    INSERT INTO FlightDeletionLog (flight_id, deleted_by_user_id, deletion_time)
    SELECT d.flight_id, ISNULL(u.user_id, -1), GETDATE()
    FROM deleted d
    LEFT JOIN [users] u ON d.admin_id = u.user_id;
    

    DELETE FROM [flight]
    WHERE flight_id IN (SELECT flight_id FROM deleted);
END;


ALTER TABLE [users]
ADD last_payment_date DATETIME;

CREATE TRIGGER Payment_InsertTrigger
ON [payment]
AFTER INSERT
AS
BEGIN

    INSERT INTO PaymentLog (card_no, user_id, flight_id, expire_date, amount, operation)
    SELECT card_no, user_id, flight_id, expire_date, amount, 'INSERT'
    FROM inserted;
END;
GO

-- Deletion trigger
CREATE TABLE PaymentLog (
  [log_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [card_no] VARCHAR(16) NOT NULL,
  [user_id] INT NOT NULL,
  [flight_id] INT NOT NULL,
  [expire_date] VARCHAR(5) NULL,
  [amount] INT NOT NULL,
  [operation] VARCHAR(10) NOT NULL,
  [timestamp] DATETIME DEFAULT GETDATE()
);

-- Insertion trigger
CREATE TRIGGER Payment_InsertTrigger
ON [payment]
AFTER INSERT
AS
BEGIN

    INSERT INTO PaymentLog (card_no, user_id, flight_id, expire_date, amount, operation)
    SELECT card_no, user_id, flight_id, expire_date, amount, 'INSERT'
    FROM inserted;
END;
GO

-- Deletion trigger
CREATE TRIGGER Payment_DeleteTrigger
ON [payment]
AFTER DELETE
AS
BEGIN

    INSERT INTO PaymentLog (card_no, user_id, flight_id, expire_date, amount, operation)
    SELECT card_no, user_id, flight_id, expire_date, amount, 'DELETE'
    FROM deleted;
END;
GO

CREATE TABLE TicketLog (
  [log_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [ticket_id] INT NOT NULL,
  [passenger_id] INT NOT NULL,
  [flight_id] INT NOT NULL,
  [user_id] INT NOT NULL,
  [seat_no] VARCHAR(10) NOT NULL,
  [cost] INT NOT NULL,
  [class] VARCHAR(3) NOT NULL,
  [operation] VARCHAR(10) NOT NULL,
  [timestamp] DATETIME DEFAULT GETDATE()
);

-- Insertion trigger
CREATE TRIGGER Ticket_InsertTrigger
ON [ticket]
AFTER INSERT
AS
BEGIN
 
    INSERT INTO TicketLog (ticket_id, passenger_id, flight_id, user_id, seat_no, cost, class, operation)
    SELECT ticket_id, passenger_id, flight_id, user_id, seat_no, cost, class, 'INSERT'
    FROM inserted;
END;
GO

-- Deletion trigger
CREATE TRIGGER Ticket_DeleteTrigger
ON [ticket]
AFTER DELETE
AS
BEGIN
  
    INSERT INTO TicketLog (ticket_id, passenger_id, flight_id, user_id, seat_no, cost, class, operation)
    SELECT ticket_id, passenger_id, flight_id, user_id, seat_no, cost, class, 'DELETE'
    FROM deleted;
END;
GO