-- Insert into Customer
INSERT INTO `LittleLemonDB`.`Customer` (`CustomerID`, `FullName`, `ContactNumber`, `Email`) VALUES
(1, 'John Doe', '1234567890', 'johndoe@sql.com'),
(2, 'Jane Smith', '2345678901', 'janesmith@sql.com'),
(3, 'Mike Johnson', '3456789012', 'mikejohnson@sql.com'),
(4, 'Emily Davis', '4567890123', 'emilydavis@sql.com'),
(5, 'William Brown', '5678901234', 'williambrown@sql.com'),
(6, 'Olivia Garcia', '6789012345', 'oliviagarcia@sql.com'),
(7, 'Liam Martinez', '7890123456', 'liammartinez@sql.com'),
(8, 'Sophia Hernandez', '8901234567', 'sophiahernandez@sql.com'),
(9, 'Mason White', '9012345678', 'masonwhite@sql.com'),
(10, 'Ava Lopez', '0123456789', 'avalopez@sql.com');

-- Insert into Bookings
INSERT INTO `LittleLemonDB`.`Bookings` (`BookingID`, `BookingDate`, `TableNumber`, `CustomerID`) VALUES
(1, '2023-06-01 18:30:00', 1, 1),
(2, '2023-06-02 19:00:00', 2, 2),
(3, '2023-06-03 20:00:00', 3, 3),
(4, '2023-06-04 21:00:00', 4, 4),
(5, '2023-06-05 18:00:00', 5, 5),
(6, '2023-06-06 19:30:00', 6, 6),
(7, '2023-06-07 20:30:00', 7, 7),
(8, '2023-06-08 21:30:00', 8, 8),
(9, '2023-06-09 18:45:00', 9, 9),
(10, '2023-06-10 19:15:00', 10, 10);

-- Insert into MenuItems
INSERT INTO `LittleLemonDB`.`MenuItems` (`MenuItemsID`, `CourseName`, `StarterName`, `DesertName`) VALUES
(1, 'Italian', 'Bruschetta', 'Tiramisu'),
(2, 'Mexican', 'Nachos', 'Churros'),
(3, 'Indian', 'Samosa', 'Gulab Jamun'),
(4, 'Chinese', 'Spring Roll', 'Fortune Cookie'),
(5, 'Japanese', 'Miso Soup', 'Mochi'),
(6, 'French', 'Onion Soup', 'Crème Brûlée'),
(7, 'Greek', 'Tzatziki', 'Baklava'),
(8, 'American', 'Buffalo Wings', 'Cheesecake'),
(9, 'Spanish', 'Gazpacho', 'Flan'),
(10, 'Thai', 'Tom Yum', 'Sticky Rice');

-- Insert into Menu
INSERT INTO `LittleLemonDB`.`Menu` (`MenuID`, `MenuName`, `Cuisine`, `MenuItemsID`) VALUES
(1, 'Italian Delight', 'Italian', 1),
(2, 'Mexican Fiesta', 'Mexican', 2),
(3, 'Indian Spice', 'Indian', 3),
(4, 'Chinese Feast', 'Chinese', 4),
(5, 'Japanese Delicacies', 'Japanese', 5),
(6, 'French Elegance', 'French', 6),
(7, 'Greek Platter', 'Greek', 7),
(8, 'American Classics', 'American', 8),
(9, 'Spanish Tapas', 'Spanish', 9),
(10, 'Thai Flavors', 'Thai', 10);

-- Insert into Delivery
INSERT INTO `LittleLemonDB`.`Delivery` (`DeliveryID`, `DeliveryDate`, `DeliveryStatus`) VALUES
(1, '2023-06-01 20:00:00', 'Delivered'),
(2, '2023-06-02 21:00:00', 'Delivered'),
(3, '2023-06-03 22:00:00', 'Delivered'),
(4, '2023-06-04 23:00:00', 'Delivered'),
(5, '2023-06-05 20:30:00', 'Pending'),
(6, '2023-06-06 21:30:00', 'Delivered'),
(7, '2023-06-07 22:30:00', 'Delivered'),
(8, '2023-06-08 23:30:00', 'Pending'),
(9, '2023-06-09 20:15:00', 'Delivered'),
(10, '2023-06-10 21:15:00', 'Delivered');

-- Insert into Orders
INSERT INTO `LittleLemonDB`.`Orders` (`OrderID`, `Date`, `Quantity`, `TotalCost`, `BookingID`, `CustomerID`, `MenuID`, `DeliveryID`) VALUES
(1, '2023-06-01 19:00:00', 2, 50.00, 1, 1, 1, 1),
(2, '2023-06-02 19:30:00', 3, 75.00, 2, 2, 2, 2),
(3, '2023-06-03 20:30:00', 1, 25.00, 3, 3, 3, 3),
(4, '2023-06-04 21:30:00', 4, 100.00, 4, 4, 4, 4),
(5, '2023-06-05 19:00:00', 2, 60.00, 5, 5, 5, 5),
(6, '2023-06-06 20:00:00', 3, 90.00, 6, 6, 6, 6),
(7, '2023-06-07 21:00:00', 1, 30.00, 7, 7, 7, 7),
(8, '2023-06-08 22:00:00', 4, 120.00, 8, 8, 8, 8),
(9, '2023-06-09 19:15:00', 2, 50.00, 9, 9, 9, 9),
(10, '2023-06-10 20:15:00', 3, 75.00, 10, 10, 10, 10);

-- Insert into Staff
INSERT INTO `LittleLemonDB`.`Staff` (`StaffID`, `FullName`, `ContactNumber`, `Email`, `Role`, `Salary`, `CustomerID`) VALUES
(1, 'Alice Walker', '1023456789', 'alicewalker@sql.com', 'Manager', 60000.00, 1),
(2, 'Bob Martin', '1123456789', 'bobmartin@sql.com', 'Chef', 50000.00, 2),
(3, 'Carol King', '1223456789', 'carolking@sql.com', 'Waiter', 30000.00, 3),
(4, 'David Lee', '1323456789', 'davidlee@sql.com', 'Cleaner', 25000.00, 4),
(5, 'Eva Adams', '1423456789', 'evaadams@sql.com', 'Receptionist', 35000.00, 5),
(6, 'Frank Harris', '1523456789', 'frankharris@sql.com', 'Manager', 62000.00, 6),
(7, 'Grace Clark', '1623456789', 'graceclark@sql.com', 'Chef', 52000.00, 7),
(8, 'Hank Lewis', '1723456789', 'hanklewis@sql.com', 'Waiter', 32000.00, 8),
(9, 'Ivy Hall', '1823456789', 'ivyhall@sql.com', 'Cleaner', 27000.00, 9),
(10, 'Jack Young', '1923456789', 'jackyoung@sql.com', 'Receptionist', 37000.00, 10);
