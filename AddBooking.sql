use LittleLemonDB;

DELIMITER //
CREATE PROCEDURE AddBooking(IN bookingID INT, IN bookingDate DATETIME, IN tableNumber INT, IN customerID INT)
BEGIN
	INSERT INTO Bookings(BookingID, BookingDate, TableNumber, CustomerID) VALUES
    (bookingID, bookingDate, tableNumber, customerID);
    SELECT "New booking added" AS "Confirmation";
END //
DELIMITER ;

CALL AddBooking(16, "2024-06-16", 6, 4);

