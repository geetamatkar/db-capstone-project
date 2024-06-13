use LittleLemonDB;
DELIMITER //
CREATE PROCEDURE AddValidBooking(IN bookingDate DATETIME, IN tableNumber INT)
BEGIN
    DECLARE isBooked INT DEFAULT 0;
    
    START TRANSACTION;

    SELECT COUNT(*) INTO isBooked
    FROM Bookings
    WHERE BookingDate = bookingDate AND TableNumber = tableNumber;

    IF isBooked > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Table ', tableNumber, ' is already booked - booking cancelled') AS "Booking Status";
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber)
        VALUES (bookingDate, tableNumber);
        COMMIT;
        SELECT 'Booking successful' AS "Booking Status";
    END IF;
END//
DELIMITER ;

CALL AddValidBooking("2024-06-12", 2);