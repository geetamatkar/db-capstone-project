use LittleLemonDB;

INSERT INTO Bookings (`BookingID`, `BookingDate`, `TableNumber`, `CustomerID`) VALUES
(11, '2024-06-11 11:30:00', 11, 1),
(12, '2024-06-12 15:00:00', 2, 2),
(13, '2024-06-13 22:00:00', 3, 3),
(14, '2024-06-14 23:00:00', 14, 4),
(15, '2024-06-15 16:00:00', 5, 5);

select * from Bookings;

