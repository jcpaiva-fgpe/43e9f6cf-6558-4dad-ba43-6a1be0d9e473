INSERT INTO municipios (cMunicipio,nombre,poblacion,mesas,censo,vBlanco,vNulos,vCandidaturas) VALUES
	 ('101','Inserción Válida','1000','2','800','10','5','700');
INSERT INTO municipios (cMunicipio,nombre,poblacion,mesas,censo,vBlanco,vNulos,vCandidaturas) VALUES
	 ('102','Inserción inválida','1000','2','800','10','5','790');
select * from municipios m where cast(cmunicipio as integer) > 100 order by cmunicipio;
