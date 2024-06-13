use LittleLemonDB;

DROP PROCEDURE IF EXISTS CancelBooking;

SET SQL_SAFE_UPDATES = 0;

DELIMITER //
CREATE PROCEDURE CancelBooking(IN bookingID INT)
BEGIN
    DELETE FROM Bookings WHERE BookingID = bookingID;
    SELECT CONCAT("Booking ", bookingID, " cancelled") AS "Confirmation";
END //
DELIMITER ;


CALL CancelBooking(2);

select * from Bookings;

SET SQL_SAFE_UPDATES = 1;