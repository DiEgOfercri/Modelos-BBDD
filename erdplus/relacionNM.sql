drop table Autor cascade constraints;
drop table Libro cascade constraints;
drop table escribe cascade constraints;

CREATE TABLE Autor
(
  autorId INT NOT NULL,
  nombre VARCHAR2(20) NOT NULL,
  PRIMARY KEY (autorId)
);

CREATE TABLE Libro
(
  libroId INT NOT NULL,
  titulo VARCHAR2(20) NOT NULL,
  PRIMARY KEY (libroId)
);

CREATE TABLE escribe
(
  autorId INT NOT NULL,
  libroId INT NOT NULL,
  PRIMARY KEY (autorId, libroId),
  FOREIGN KEY (autorId) REFERENCES Autor(autorId),
  FOREIGN KEY (libroId) REFERENCES Libro(libroId)
);