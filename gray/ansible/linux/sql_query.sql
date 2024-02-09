-- SQL query for karoake

CREATE USER IF NOT EXISTS 'username4'@'localhost' IDENTIFIED BY 'password1';
CREATE USER IF NOT EXISTS 'username5'@'localhost' IDENTIFIED BY 'password2';
CREATE USER IF NOT EXISTS 'username6'@'localhost' IDENTIFIED BY 'password3';
-- Add more users as needed Change the users and passwords when going into production

-- GRanting permissions for the users (Test Users. Need to change)
GRANT ALL PRIVILEGES ON *.* TO 'username4'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'username5'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'username6'@'localhost';

-- Table for Songs
CREATE TABLE IF NOT EXISTS Songs (
    SongID INT PRIMARY KEY,
    Title NVARCHAR(255),
    Artist NVARCHAR(255),
    Genre NVARCHAR(100)
);


-- Table for Song Requests
CREATE TABLE IF NOT EXISTS Tabs (
    TabID INT PRIMARY KEY,
    tabName NVARCHAR(255),
    Amount INT
);

-- Additional tables can go below, unsure of what else. 



-- Sample Data 
INSERT INTO Songs (SongID, Title, Artist)
VALUES 
    (1, 'Song1', 'Artist1'),
    (2, 'Song2', 'Artist2'),
    (3, 'Song3', 'Artist3');


INSERT INTO Tabs (TabsID, NAME, AMOUNT)
VALUES 
    (1, 'Tab1', '100'),
    (2, 'Tab2', '200'),
    (3, 'Tab3', '300');

