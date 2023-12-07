
CREATE DATABASE OurExerciseDb 
ON PRIMARY
    (NAME = 'OurExerciseDb_data',
    FILENAME = 'D:\Mphasis\Phase-2\Exercises\OurExerciseDb_data.mdf',
    SIZE = 24MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 8MB)
LOG ON
    (NAME = 'OurExerciseDb_log',
    FILENAME = 'D:\Mphasis\Phase-2\Exercises\OurExerciseDb_log.ldf',
    SIZE = 1MB,
    MAXSIZE = 2048GB,
    FILEGROWTH = 10%)

USE OurExerciseDb 

CREATE TABLE Product (
    PId INT IDENTITY(50, 1) PRIMARY KEY,
    PName NVARCHAR(255) NOT NULL,
    PPrice DECIMAL(18, 2) CHECK (PPrice >= 50 AND PPrice <= 100000),
    PCompany NVARCHAR(255) CHECK (PCompany IN ('SamSung', 'Apple', 'Redmi', 'HTC')),
    PQty INT DEFAULT 1 CHECK (PQty >= 1)
)
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('Product1', 75.50, 'SamSung', 5)
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('Product2', 99.99, 'Apple', 3)
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('Product3', 60.00, 'Redmi', 2)
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('Product4', 80.00, 'HTC', 4)
INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES ('Product5', 70.50, 'SamSung', 1)

SELECT * FROM Product