INSERT INTO partidos (cPartido,siglas,denominacion,votos,escanyos)
	VALUES (1000,'c3','CIFP Carlos III',1000,2);
INSERT INTO partidos (cPartido,siglas,denominacion,votos,escanyos)
	VALUES (150001,null, null,1000,2);
INSERT INTO partidos (cPartido,siglas,denominacion,votos,escanyos)
	VALUES (150001,'c3','CIFP Carlos III',null,null);
INSERT INTO partidos (cPartido,siglas,denominacion,votos,escanyos)
	VALUES (150001,'c3','CIFP Carlos III',1000,2);
INSERT INTO partidos (cPartido,siglas,denominacion,votos,escanyos)
	VALUES (150002,'PS','Partido de las soluciones',500,1);
INSERT INTO candidato (dni,nombre,apellidos,cpartido)
	VALUES ('12345678A','Pepe','García',150000);
INSERT INTO candidato (dni,nombre,apellidos,cpartido)
	VALUES ('12345678B',null,null,150001);
INSERT INTO candidato (dni,nombre,apellidos,cpartido)
	VALUES ('12345678C','Pepa','García',150001);
INSERT INTO candidato (dni,nombre,apellidos,posicionLista,cpartido)
	VALUES ('12345678D','Juan','Fernández',2,150001);

select cPartido,siglas,denominacion,escanyos from partidos
union
select cpartido, dni,nombre,posicionLista from candidato order by 1, 2;