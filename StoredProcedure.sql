use LittleLemonDB;

DELIMITER //
CREATE PROCEDURE CancelOrder(IN orderID INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = orderID;
END //
DELIMITER ;

select * from Orders;

CALL CancelOrder(3);


