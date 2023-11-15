CREATE TABLE piloto(
        ID INT PRIMARY KEY,
        Nombre VARCHAR (20),
        Apellidos VARCHAR (20),
        Alias VARCHAR (20),
        Nombre_actual VARCHAR (20),
        Pais VARCHAR (20),
        Equipo VARCHAR (25)

);

CREATE TABLE Circuitos(
        Nombre PRIMARY KEY,
        Longuitud_M INT,
        Tel_Contacto INT,
        Tm_vuelta_rapida_min INT,
        Pais VARCHAR (20)

);


CREATE TABLE Equipo(
        Nombre PRIMARY KEY,
        Jefe_equipo VARCHAR (25),
        Marca VARCHAR (25)






);