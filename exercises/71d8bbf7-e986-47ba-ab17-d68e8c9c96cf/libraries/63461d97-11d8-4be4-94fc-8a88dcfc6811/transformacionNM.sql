CREATE TABLE ciclista (
	ficha integer NOT NULL,
	fecha_nac date NOT NULL,
	nombre varchar(50) NOT NULL,
	pais varchar(30) NOT NULL DEFAULT 'ESPAÑA',
	anyo_retiro integer NULL,
	anyo_prof integer NOT NULL,
	CONSTRAINT ciclista_pk PRIMARY KEY (ficha),
	CONSTRAINT ciclista_prof2015 CHECK (anyo_prof >= 2015)
);

CREATE TABLE equipo (
	nombre varchar(100) NOT NULL,
	anyo_apar integer NOT NULL,
	anyo_des integer NULL,
	CONSTRAINT equipo_pk PRIMARY KEY (nombre)
);

CREATE TABLE pertenece (
	ficha integer NOT NULL,
	nombre varchar(100) NOT NULL,
	anyo integer NOT NULL,
	CONSTRAINT pertenece_pk PRIMARY KEY (ficha,nombre,anyo)
);

ALTER TABLE pertenece ADD CONSTRAINT pertenece_fk FOREIGN KEY (ficha) REFERENCES ciclista(ficha);
ALTER TABLE pertenece ADD CONSTRAINT pertenece_fk_1 FOREIGN KEY (nombre) REFERENCES equipo(nombre);

