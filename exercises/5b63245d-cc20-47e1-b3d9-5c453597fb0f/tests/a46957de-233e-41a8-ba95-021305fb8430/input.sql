INSERT INTO equipo (nombre,anyo_apar, director)
	VALUES ('InnovaFest',2021, 'Chema Cenarro - Rosa Ware - Mari Cruz Sanz Zamarron');
INSERT INTO equipo (nombre,anyo_apar, director)
	VALUES ('InnovaFest',2021, 'Chema Cenarro');
INSERT INTO equipo (nombre,anyo_apar,anyo_des, director, activo)
	VALUES ('Encuentro1',2018,2021, 'Mari Cruz Sanz', 'yes');
INSERT INTO equipo (nombre,anyo_apar,anyo_des, director, activo)
	VALUES ('Encuentro2',2018,2021, 'Mari Cruz Sanz', 1);
INSERT INTO equipo (nombre,anyo_apar,anyo_des, director, activo)
	VALUES ('Encuentro3',2018,2021, 'Mari Cruz Sanz', 'la');
INSERT INTO equipo (nombre,anyo_apar,anyo_des, director, activo)
	VALUES ('Encuentro4',2018,2021, 'Mari Cruz Sanz', 'SI');
INSERT INTO equipo (nombre,anyo_apar,anyo_des, director, activo)
	VALUES ('Encuentro5',2018,2021, 'Mari Cruz Sanz', 'NO');
select * from equipo e order by nombre;