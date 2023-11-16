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
        id_categoria
);

CREATE TABLE GP(
        ID INT PRIMARY KEY,
        nom_gp VARCHAR (25),
        Fecha date,
        id_circuito VARCHAR (25),
        FOREIGN KEY (id_circuito) REFERENCES Circuitos(Nombre)
);

CREATE TABLE pais(
        pais PRIMARY KEY VARCHAR (25)
);
CREATE TABLE Resultado(
        ID INT PRIMARY KEY,
        Tiempo VARCHAR (25),
        id_piloto INT,
        FOREIGN KEY (id_piloto) REFERENCES ID(piloto)



    
);
CREATE TABLE categoria(
        id INT PRIMARY KEY,
        Categoria VARCHAR (25)
);

CREATE TABLE Marca(
        ID INT PRIMARY KEY,
        nombre VARCHAR (25)


);

CREATE TABLE record_circuito (
        id_piloto INT,
        id_circuito VARCHAR (25),
        Fecha date,
        Tiempo VARCHAR(10),
        FOREIGN KEY (id_piloto) REFERENCES piloto(ID),
        FOREIGN KEY (id_circuito) REFERENCES Circuitos(Nombre),
        PRIMARY KEY (id_circuito, id_piloto, Fecha)

);


CREATE TABLE GP_Piloto_Resultado (
        ID_GP INT,
        id_piloto INT, todas claves foreaneas y primareas de esta tabla
        id_resultado 
        FOREIGN KEY (ID_GP) REFERENCES  GP(ID),
        FOREIGN KEY (id_piloto) REFERENCES  piloto(ID),
        FOREIGN KEY (id_piloto) REFERENCES  piloto(ID)


);

CREATE TABLE Piloto_equipo (
        id_piloto INT,
        id_equipo VARCHAR (25),
        año INT,
        dorsal INT,
        FOREIGN KEY (id_equipo) REFERENCES Equipo(Nombre),
        FOREIGN KEY (id_piloto) REFERENCES piloto(ID),
        PRIMARY KEY (id_piloto, id_equipo)


);


