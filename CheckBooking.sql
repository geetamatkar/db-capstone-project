use LittleLemonDB;


DROP PROCEDURE IF EXISTS CheckBooking;

DELIMITER //
CREATE PROCEDURE CheckBooking(IN bookingDate DATETIME, IN tableNumber INT)
BEGIN
    DECLARE bookedTable INT DEFAULT 0;
	 SELECT COUNT(bookedTable)
        INTO bookedTable
        FROM Bookings WHERE BookingDate = bookingDate AND TableNumber = tableNumber;
	    IF bookedTable > 0 THEN
          SELECT CONCAT("Table ", tableNumber, " is already booked") AS "Booking Status";
		  ELSE
		  SELECT CONCAT("Table ", tableNumber, " is not booked") AS "Booking Status";
	    END IF;
END //
DELIMITER ;

CALL CheckBooking("2024-06-14", 14);