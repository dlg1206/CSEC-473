-- SQL query for karoake

CREATE USER IF NOT EXISTS 'FreeBird'@'localhost' IDENTIFIED BY 'password1';
CREATE USER IF NOT EXISTS 'CountryRoads'@'localhost' IDENTIFIED BY 'password1';
CREATE USER IF NOT EXISTS 'SweetCaroline'@'localhost' IDENTIFIED BY 'password1';

-- Remote user for to login with WEBSERVER IP ADDRESS. 
CREATE USER IF NOT EXISTS 'GrayWebserver'@'192.168.1.10' IDENTIFIED BY 'password1'; 

-- Add more users as needed Change the users and passwords when going into production

-- GRanting permissions for the users (Test Users. Need to change)
GRANT ALL PRIVILEGES ON *.* TO 'FreeBird'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'CountryRoads'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'SweetCaroline'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'GrayScoring'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'GrayWebserver'@'192.168.1.10' WITH GRANT OPTION; -- CHANGE TO WEBSERVER ADDRESS
FLUSH PRIVILEGES;

-- Table for Website Credentials
CREATE TABLE IF NOT EXISTS Credentials (
        id INT AUTO_INCREMENT PRIMARY KEY,
        username VARCHAR(255) NOT NULL,
        password VARCHAR(255) NOT NULL
        );

-- Table for Songs
CREATE TABLE IF NOT EXISTS Songs (
            SongID INT AUTO_INCREMENT PRIMARY KEY,
            Title NVARCHAR(255),
            Artist NVARCHAR(255),
            Genre NVARCHAR(100)
        );


        -- Table for Song Requests
CREATE TABLE IF NOT EXISTS Tabs (
            TabID INT AUTO_INCREMENT PRIMARY KEY,
            tabName NVARCHAR(255),
            AMOUNT NVARCHAR(255)
        );

        -- Additional tables can go below, unsure of what else.



-- Sample Data
INSERT IGNORE INTO Songs (SongID, Title, Artist)
VALUES
    (1, 'Song1', 'Artist1'),
    (2, 'Song2', 'Artist2'),
    (3, 'Song3', 'Artist3');


INSERT IGNORE INTO Tabs (TabID, tabName, AMOUNT)
VALUES
    (1, 'Tab1', '100'),
    (2, 'Tab2', '200'),
    (3, 'Tab3', '300');


INSERT IGNORE INTO Credentials(id, username, password)
VALUES
    (1, 'remote', 'password1')
