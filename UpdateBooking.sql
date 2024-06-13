use LittleLemonDB;

DELIMITER //
CREATE PROCEDURE UpdateBooking(IN bookingID INT, IN bookingDate DATETIME)
BEGIN
UPDATE Bookings SET BookingDate = bookingDate
WHERE BookingID = bookingID;
SELECT CONCAT("Booking ", bookingID, " updated") AS "Confirmation";
END //
DELIMITER ;
SET SQL_SAFE_UPDATES = 0;

CALL UpdateBooking(10, "2024-06-11");

SET SQL_SAFE_UPDATES = 1;

select * from Bookings;
