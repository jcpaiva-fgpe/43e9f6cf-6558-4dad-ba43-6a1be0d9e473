insert into municipios (cMunicipio,nombre,poblacion,mesas,censo,vBlanco,vNulos,vCandidaturas)
values ('004','Albudeite',1361,2,(select SUM(censo) from votos_mesa where cmunicipio = '004'),3,7,1008);