-- Creación de la Base de Datos
CREATE DATABASE Formula1
ON
(
NAME="Formula1_Data",
FILENAME="D:\Data Analitycs\Trabajo\GitHub-Repos\Formula1\sql\Formula1_Data.mdf",
SIZE=100MB,
MAXSIZE=1GB,
FILEGROWTH=10MB
)

-- Crear la Base de Registro

LOG ON
(
NAME="Formula_Log",
FILENAME="D:\Data Analitycs\Trabajo\GitHub-Repos\Formula1\sql\Formula1_Data.ldf",
SIZE=50MB,
MAXSIZE=500MB,
FILEGROWTH=5MB
)
