CREATE TABLE partidos (
	cPartido integer NOT NULL PRIMARY key check (cPartido > 150000),
	siglas varchar(30) NOT NULL,
	denominacion varchar(100) NOT NULL,
	votos integer,
	escanyos integer
);

CREATE TABLE candidato (
	dni varchar(10) NOT NULL,
	nombre varchar(30) NOT NULL,
	apellidos varchar(50) NOT NULL,
	posicionLista integer not null default 1,
	cPartido integer references partidos (cPartido)
);
