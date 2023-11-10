drop table Socio cascade constraints;
drop table Alumno cascade constraints;
drop table socioAlumno cascade constraints;

CREATE TABLE Socio
(
  socioId INT NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  PRIMARY KEY (socioId)
);

CREATE TABLE Alumno
(
  alumnoId INT NOT NULL,
  nombre VARCHAR(80) NOT NULL,
  PRIMARY KEY (alumnoId)
);

CREATE TABLE socioAlumno
(
  socioId INT NOT NULL,
  alumnoId INT NOT NULL,
  PRIMARY KEY (socioId, alumnoId),
  FOREIGN KEY (socioId) REFERENCES Socio(socioId),
  FOREIGN KEY (alumnoId) REFERENCES Alumno(alumnoId)
);