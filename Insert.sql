INSERT INTO [dbo].[users] ([username], [email], [password])
VALUES ('user1', 'user1@example.com', 'password1'),
       ('user2', 'user2@example.com', 'password2'),
       ('user3', 'user3@example.com', 'password3'),
       ('user4', 'user4@example.com', 'password4'),
       ('user5', 'user5@example.com', 'password5');
INSERT INTO [dbo].[admin] ([admin_uname], [admin_email], [admin_pwd])
VALUES ('Mehdi', 'admin1@example.com', 'adminpassword1'),
       ('Haris', 'admin2@example.com', 'adminpassword2'),
	          ('Asad', 'admin3@example.com', 'adminpassword3');
INSERT INTO [dbo].[airline] ([name], [seats])
VALUES 
('Delta Air Lines', 250),
('American Airlines', 300),
('United Airlines', 280),
('Southwest Airlines', 200),
('Emirates', 350),
('Lufthansa', 270),
('British Airways', 320),
('Air France', 260),
('Qatar Airways', 310),
('Singapore Airlines', 330);

INSERT INTO [dbo].[flight] ([admin_id], [arrival], [departure], [Destination], [source], [airline], [Seats], [duration], [Price], [status], [issue], [last_seat], [bus_seats], [last_bus_seat])
VALUES 
(2, '2024-06-10 09:00:00', '2024-06-10 11:30:00', 'New York', 'London', 'Delta Air Lines', 'A1, A2, A3, ..., A250', '2 hours 30 minutes', 800, 'Active', NULL, 'A250', 20, 'B20'),
(3, '2024-06-11 10:30:00', '2024-06-11 15:00:00', 'London', 'Paris', 'British Airways', 'B1, B2, B3, ..., B300', '4 hours 30 minutes', 600, 'Active', NULL, 'B300', 20, 'C20'),
(4, '2024-06-12 14:00:00', '2024-06-12 18:30:00', 'Paris', 'Dubai', 'Emirates', 'C1, C2, C3, ..., C350', '4 hours 30 minutes', 1000, 'Active', NULL, 'C350', 20, 'D20'),
(2, '2024-06-13 08:30:00', '2024-06-13 12:30:00', 'Dubai', 'Singapore', 'Singapore Airlines', 'D1, D2, D3, ..., D400', '4 hours', 1200, 'Active', NULL, 'D400', 20, 'E20'),
(3, '2024-06-14 11:00:00', '2024-06-14 14:30:00', 'Singapore', 'Tokyo', 'ANA', 'E1, E2, E3, ..., E450', '3 hours 30 minutes', 900, 'Active', NULL, 'E450', 20, 'F20'),
(4, '2024-06-15 13:30:00', '2024-06-15 16:00:00', 'Tokyo', 'Sydney', 'Qantas', 'F1, F2, F3, ..., F500', '2 hours 30 minutes', 1100, 'Active', NULL, 'F500', 20, 'G20'),
(2, '2024-06-16 10:00:00', '2024-06-16 12:30:00', 'Sydney', 'Los Angeles', 'Qantas', 'G1, G2, G3, ..., G550', '14 hours 30 minutes', 1500, 'Active', NULL, 'G550', 20, 'H20'),
(3, '2024-06-17 09:30:00', '2024-06-17 12:30:00', 'Los Angeles', 'New York', 'American Airlines', 'H1, H2, H3, ..., H600', '5 hours', 700, 'Active', NULL, 'H600', 20, 'I20'),
(4, '2024-06-18 12:00:00', '2024-06-18 15:00:00', 'New York', 'London', 'British Airways', 'I1, I2, I3, ..., I650', '7 hours', 900, 'Active', NULL, 'I650', 20, 'J20'),
(2, '2024-06-19 08:00:00', '2024-06-19 10:30:00', 'London', 'Paris', 'Air France', 'J1, J2, J3, ..., J700', '1 hour 30 minutes', 500, 'Active', NULL, 'J700', 20, 'K20'),
(3, '2024-06-20 14:30:00', '2024-06-20 18:00:00', 'Paris', 'Dubai', 'Emirates', 'K1, K2, K3, ..., K750', '3 hours 30 minutes', 1200, 'Active', NULL, 'K750', 20, 'L20'),
(4, '2024-06-21 10:00:00', '2024-06-21 13:30:00', 'Dubai', 'Singapore', 'Singapore Airlines', 'L1, L2, L3, ..., L800', '2 hours 30 minutes', 800, 'Active', NULL, 'L800', 20, 'M20'),
(2, '2024-06-22 09:00:00', '2024-06-22 12:30:00', 'Singapore', 'Tokyo', 'ANA', 'M1, M2, M3, ..., M850', '7 hours 30 minutes', 1000, 'Active', NULL, 'M850', 20, 'N20'),
(3, '2024-06-23 11:30:00', '2024-06-23 15:00:00', 'Tokyo', 'Sydney', 'Qantas', 'N1, N2, N3, ..., N900', '8 hours 30 minutes', 1300, 'Active', NULL, 'N900', 20, 'O20'),
(4, '2024-06-24 13:00:00', '2024-06-24 16:00:00', 'Sydney', 'Los Angeles', 'Qantas', 'O1, O2, O3, ..., O950', '15 hours', 1400, 'Active', NULL, 'O950', 20, 'P20'),
(2, '2024-06-25 10:30:00', '2024-06-25 13:30:00', 'Los Angeles', 'New York', 'American Airlines', 'P1, P2, P3, ..., P1000', '6 hours', 600, 'Active', NULL, 'P1000', 20, 'Q20'),
(3, '2024-06-26 08:00:00', '2024-06-26 10:30:00', 'New York', 'London', 'British Airways', 'Q1, Q2, Q3, ..., Q1050', '3 hours 30 minutes', 700, 'Active', NULL, 'Q1050', 20, 'R20'),
(4, '2024-06-27 14:30:00', '2024-06-27 18:00:00', 'London', 'Paris', 'Air France', 'R1, R2, R3, ..., R1100', '4 hours 30 minutes', 800, 'Active', NULL, 'R1100', 20, 'S20'),
(2, '2024-06-28 10:00:00', '2024-06-28 12:30:00', 'Paris', 'Dubai', 'Emirates', 'S1, S2, S3, ..., S1150', '7 hours', 1100, 'Active', NULL, 'S1150', 20, 'T20'),
(3, '2024-06-29 09:30:00', '2024-06-29 12:30:00', 'Dubai', 'Singapore', 'Singapore Airlines', 'T1, T2, T3, ..., T1200', '2 hours', 900, 'Active', NULL, 'T1200', 20, 'U20');

INSERT INTO [dbo].[passenger_profile] ([user_id], [flight_id], [mobile], [dob], [f_name], [m_name], [l_name])
VALUES 
(5, 3, '1234567890', '1990-05-15', 'John', 'Doe', NULL),
(6, 4, '9876543210', '1988-08-20', 'Alice', 'Mary', 'Smith'),
(7, 5, '5551234567', '1975-11-10', 'Michael', NULL, 'Johnson'),
(8, 6, '9998887776', '1982-04-25', 'Emily', 'Grace', 'Brown'),
(9, 7, '3332221110', '1995-09-30', 'David', 'William', 'Jones'),
(9, 8, '7778889991', '1987-02-12', 'Sarah', 'Jane', 'Wilson'),
(8, 9, '6665554443', '1980-06-18', 'Matthew', 'Thomas', 'Lee'),
(7, 10, '1112223334', '1978-03-05', 'Jessica', NULL, 'Taylor'),
(6, 11, '4445556665', '1989-07-22', 'Daniel', 'James', 'Clark'),
(5, 12, '8889990007', '1992-12-28', 'Lauren', 'Elizabeth', 'Anderson');

INSERT INTO [dbo].[payment] ([card_no], [user_id], [flight_id], [expire_date], [amount])
VALUES 
('1234567812345678', 9, 20, '07/25', 800),
('2345678923456789', 8, 3, '08/25', 600),
('3456789034567890', 6, 4, '09/25', 1000),
('4567890145678901', 5, 5, '10/25', 1200),
('5678901256789012', 7, 6, '11/25', 1500),
('6789012367890123', 9, 7, '12/25', 900),
('7890123478901234', 8, 8, '01/26', 500),
('8901234589012345', 7, 9, '02/26', 1200),
('9012345690123456', 6, 10, '03/26', 800),
('0123456701234567', 5, 11, '04/26', 1100),
('1', 9, 12, '05/26', 900),
('2', 8, 13, '06/26', 800),
('3', 7, 14, '07/26', 1100),
('4', 6, 15, '08/26', 1400),
('5', 5, 16, '09/26', 600);

INSERT INTO [dbo].[ticket] ([passenger_id], [flight_id], [user_id], [seat_no], [cost], [class])
VALUES 
(3, 20, 5, 'A1', 800, 'Eco'),
(4, 3, 6, 'B2', 600, 'Eco'),
(5, 4, 7, 'C3', 1000, 'Eco'),
(6, 5, 8, 'D4', 1200, 'Eco'),
(7, 6, 9, 'E5', 1500, 'Eco'),
(8, 7, 5, 'F6', 900, 'Eco'),
(9, 8, 6, 'G7', 500, 'Eco'),
(10, 9, 7, 'H8', 1200, 'Eco'),
(11, 10, 8, 'I9', 800, 'Eco'),
(12, 11, 9, 'J10', 1100, 'Eco'),
(4, 12, 5, 'K11', 900, 'Eco'),
(5, 13, 6, 'L12', 800, 'Eco'),
(6, 14, 7, 'M13', 1100, 'Eco'),
(7, 15, 8, 'N14', 1400, 'Eco'),
(8, 16, 9, 'O15', 600, 'Eco'),
(9, 17, 5, 'P16', 700, 'Eco'),
(10, 18, 6, 'Q17', 900, 'Eco'),
(11, 19, 7, 'R18', 800, 'Eco'),
(12, 20, 8, 'S19', 1100, 'Eco'),
(3, 21, 9, 'T20', 1200, 'Eco');



