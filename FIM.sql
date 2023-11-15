CREATE TABLE piloto(
        ID INT PRIMARY KEY,
        Nombre VARCHAR (20),
        Apellidos VARCHAR (20),
        Alias VARCHAR (20),
        Nombre_actual VARCHAR (20),
        Equipo VARCHAR (25),
        Pais VARCHAR (20),
        FOREIGN KEY (Pais) REFERENCES pais(pais)
);

CREATE TABLE Circuitos(
        Nombre PRIMARY KEY VARCHAR (20),
        Longuitud_M INT,
        Tel_Contacto INT,
        Tm_vuelta_rapida_min INT,
        Pais VARCHAR (20),
        FOREIGN KEY (Pais) REFERENCES pais(pais)
);


CREATE TABLE Equipo(
        Nombre PRIMARY KEY VARCHAR (25),
        Jefe_equipo VARCHAR (25),
        Marca VARCHAR (25),
);

CREATE TABLE GP(
        ID INT PRIMARY KEY,
        nom_gp VARCHAR (25)
);

CREATE TABLE pais(
        pais PRIMARY KEY VARCHAR (25)
);
CREATE TABLE Resultado(



    
);