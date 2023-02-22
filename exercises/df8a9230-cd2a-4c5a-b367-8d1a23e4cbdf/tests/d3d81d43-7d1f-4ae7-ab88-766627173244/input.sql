INSERT INTO public.incidencias (id, carretera,causa,cod_nivel,pk_inicial,pk_final,poblacion,cod_provincia,cod_sentido,tipo_incidencia)
	VALUES (1000, 'A-7','Probando el asfalto',1,22.3,32.1,'San Javier',30,2,3);
INSERT INTO public.incidencias (id, carretera,causa,cod_nivel,pk_inicial,pk_final,poblacion,cod_provincia,cod_sentido,tipo_incidencia)
	VALUES (1001, 'AB-7','Bache en la carretera',3,58,65,'En Albacete',null,1,1);
INSERT INTO public.incidencias (id, carretera,causa,cod_nivel,pk_inicial,pk_final,poblacion,cod_provincia,cod_sentido,tipo_incidencia)
	VALUES (1002, 'MU-7','Bache en la carretera',3,58,65,'Otra matrícula',null,1,1);
select * from incidencias where id >= 1000;