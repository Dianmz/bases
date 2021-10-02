CREATE DATABASE db_bases;

USE db_bases;

CREATE TABLE Tipo(
	codigo_tipo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre varchar(50)
);

CREATE TABLE Categoria(
	codigo_categoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	categoria varchar(50)
);

CREATE TABLE Generacion(
	generacion INT NOT NULL PRIMARY KEY
);

CREATE TABLE Locacion(
	codigo_locacion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre varchar(50),
    padre varchar(50)
);
CREATE TABLE Rareza(
	codigo_rareza INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	rareza varchar(50)
);
CREATE TABLE Juego(
	codigo_juego INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	juego varchar(50)
);
CREATE TABLE Tiempo(
	codigo_tiempo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	tiempo varchar(50)
);

CREATE TABLE Habilidad(
	codigo_habilidad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre varchar(50),
    descripcion varchar(250),
    cantidadpk int
);

CREATE TABLE Pokemon(
	codigo_pokemon INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_pokemon varchar(10) NULL,
    nombre varchar(100),
    total int null,
    hp int null,
    ataque int null,
    defensa int null,
    sp_ataque int null,
    sp_defensa int null,
    rapidez int null
);

CREATE TABLE Evolucion(
	codigo_pokemon INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nivel INT NULL,
    condicion varchar(150) NULL,
    pockemon_inicio INT,
    pockemon_fin INT,
    FOREIGN KEY (pockemon_inicio) REFERENCES Pokemon(codigo_pokemon),
    FOREIGN KEY (pockemon_inicio) REFERENCES Pokemon(codigo_pokemon)
);

CREATE TABLE PokemonTipo(
	codigo_pokemon INT,
    codigo_tipo INT,
    FOREIGN KEY (codigo_pokemon) REFERENCES Pokemon(codigo_pokemon),
    FOREIGN KEY (codigo_tipo) REFERENCES Tipo(codigo_tipo)
);

CREATE TABLE PokemonHabilidad(
	codigo_pokemon INT,
    codigo_habilidad INT,
    FOREIGN KEY (codigo_pokemon) REFERENCES Pokemon(codigo_pokemon),
    FOREIGN KEY (codigo_habilidad) REFERENCES Habilidad(codigo_habilidad)
);

CREATE TABLE DetallePokemon(
	codigo_detalle INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    niveles varchar(50) NULL,
    detalle varchar(200) NULL,
    codigo_pokemon int NULL,
    codigo_tiempo int NULL,
    codigo_locacion int NULL,
    codigo_generacion int NULL,
    codigo_juego int NULL,
	FOREIGN KEY (codigo_pokemon) REFERENCES pokemon(codigo_pokemon),
	FOREIGN KEY (codigo_tiempo) REFERENCES tiempo(codigo_tiempo),
	FOREIGN KEY (codigo_locacion) REFERENCES locacion(codigo_locacion),
	FOREIGN KEY (codigo_generacion) REFERENCES generacion(generacion),
	FOREIGN KEY (codigo_juego) REFERENCES juego(codigo_juego)
);



