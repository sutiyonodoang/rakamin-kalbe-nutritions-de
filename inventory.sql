-- Create the 'KALBE' database
CREATE DATABASE KALBE;

-- Switch to the 'KALBE' database
USE KALBE;

-- Create the 'Inventory' table
CREATE TABLE Inventory (
    item_code INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    item_total INT NOT NULL,
    UNIQUE (item_code)
);

-- Insert data into the 'Inventory' table
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES
    (2341, 'Promag Tablet', 3000, 100),
    (2342, 'Hydro Coco 250ML', 7000, 20),
    (2343, 'Nutrive Benecol 100ML', 20000, 30),
    (2344, 'Blackmores Vit C 500Mg', 95000, 45),
    (2345, 'Entrasol Gold 370G', 90000, 120);

# Show Item_name that has the highest number in Item_total.
SELECT item_name FROM inventory
    WHERE item_total = (SELECT max(item_total) FROM inventory)

# Update the Item_price of the output of question bullet
# Misal, akan mengupdate harga barang dengan code 2341, dari 3000 menjadi 3500
UPDATE Inventory
SET Item_price = 3500
WHERE Item_code = 2341;

# What will happen if we insert another Item_name with Item_code of 2343 into the table?
Akan muncul pesan error --> 1062 - Duplicate entry '2343' for key 'PRIMARY'

# Delete the Item_name that has the lowest number of Item_total.
DELETE FROM Inventory
WHERE Item_total = (
    SELECT MIN(Item_total)
    FROM Inventory
);
