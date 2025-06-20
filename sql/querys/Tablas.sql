USE Formula1

-- Crear Tabla de Drivers

CREATE TABLE Drivers (
	DriverID INT PRIMARY KEY,
	Forename NVARCHAR (150) NOT NULL,
	Surname NVARCHAR (150) NOT NULL,
	Nationality NVARCHAR (150) NOT NULL,
	Born DATE NOT NULL
);

--SOLO CREE LA TABLA DE DRIVERS PORQUE ESTOY TRABAJANDO EN EL CSV DE DRIVERS.
--TENGO QUE CREAR LAS FOREIGN KEYS CON [FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)]
-- Crear Tabla de Circuitos

CREATE TABLE Circuits (
	CircuitID INT PRIMARY KEY,
	Fullname NVARCHAR (150) NOT NULL,
	Country NVARCHAR (150) NOT NULL,
	City NVARCHAR (100) NOT NULL,
	lat FLOAT NOT NULL,
	alt FLOAT NOT NULL,
	ing FLOAT NOT NULL
);

-- Crear Tabla de Resultados

CREATE TABLE Results (
	ResultID INT PRIMARY KEY,
	RaceID INT,
	DriverID INT,
	ConstructorID INT,
	StatusID INT,
	Grid INT NOT NULL,
	FinalPos INT NOT NULL,
	Points INT NOT NULL,
	Laps INT NOT NULL,
	FastestLap INT NOT NULL,
	FastestLapTime NVARCHAR (50) NOT NULL
);

-- Crear Tabla de Race

CREATE TABLE Races (
	RaceID INT PRIMARY KEY,
	CircuitID INT,
	[Year] INT,
	Circuit NVARCHAR (100),
	[Date] DATE,
	[Time] TIME
);

-- Crear Tabla de Status

CREATE TABLE Status (
	StatusID INT PRIMARY KEY,
	[Status] NVARCHAR(100)
);

-- Crear Tabla de Constructors

CREATE TABLE Constructors (
	ConstructorID INT PRIMARY KEY,
	Team NVARCHAR(100),
	Nationality NVARCHAR(100)
);

-- Crear Tabla de Constructors_Results

CREATE TABLE Constructors_Results (
	ConstructorResultID INT PRIMARY KEY,
	ConstructorID INT,
	RaceID INT,
	Points INT,
	[Status] NVARCHAR (100),
);

-- Crear Tabla de Qualifying

CREATE TABLE Qualifying (
	QualifyID INT PRIMARY KEY,
	RaceID INT,
	DriverID INT,
	ConstructorID INT,
	Position INT,
	Q1 TIME,
	Q2 TIME,
	Q3 TIME
);

-- Crear Tabla de PitStops

CREATE TABLE Pit_Stops (
	RaceID INT,
	DriverID INT,
	[Stop] INT,
	Lap INT,
	[Time] TIME,
	Duration FLOAT,

);

-- Crear Tabla de Drivers_Lap_Times

CREATE TABLE Drivers_Lap_Times (
	RaceID INT,
	DriverID INT,
	Lap INT,
	Position INT,
	[Time] TIME
);

-- Crear Tabla de Driver_Standings

CREATE TABLE Driver_Standings (
	DriverStangingID INT PRIMARY KEY,
	RaceID INT,
	DriverID INT,
	Points INT,
	Position INT,
	Wins INT
);

-- Crear Tabla de Constructors_Standings

CREATE TABLE Constructors_Standings (
	ConstructorStangingID INT PRIMARY KEY,
	RaceID INT,
	ConstructorID INT,
	Points INT,
	Position INT,
	Wins INT
);