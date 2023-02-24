CREATE TYPE activoType AS ENUM ('SI', 'NO');
ALTER TABLE equipo ADD director varchar(30) NULL;
ALTER TABLE equipo ADD activo activoType NULL;
