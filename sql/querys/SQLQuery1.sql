USE Formula1

-- Query para eliminar la tabla "Drivers"
-- IF OBJECT_ID('Drivers', 'U') IS NOT NULL
-- BEGIN
--     DROP TABLE Drivers;
-- END 

SELECT * FROM Drivers;

SELECT * FROM GP;

-- Query para renombrar columnas de la tabla Drivers y GP
EXEC sp_rename 'Drivers.Driver_ID', 'DriverID', 'COLUMN';
EXEC sp_rename 'Drivers.born', 'Born', 'COLUMN';
EXEC sp_rename 'Drivers.nationality', 'Nationality', 'COLUMN';
EXEC sp_rename 'Drivers.url', 'URL', 'COLUMN';

EXEC sp_rename 'GP.Driver_ID', 'DriverID', 'COLUMN';
EXEC sp_rename 'GP.year', 'Year', 'COLUMN';

-- Le cambio el nombre a la tabla drivers a Drivers
EXEC sp_rename 'drivers', 'Drivers';
