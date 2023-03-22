CREATE TABLE votos_mesa (
	cmunicipio varchar(3) NOT NULL,
	dmunicipal varchar(2) NOT NULL,
	seccion varchar(4) NOT NULL,
	mesa char NOT NULL,
	censo int4 NOT NULL,
	vblanco int4 NOT NULL,
	vnulos int4 NOT NULL,
	vcandidaturas int4 NOT NULL
);

INSERT INTO votos_mesa (cMunicipio,dMunicipal,seccion,mesa,censo,vBlanco,vNulos,vCandidaturas) VALUES
	 ('001','01','001','A','387','1','3','324'),
	 ('001','01','001','B','435','2','2','357');
