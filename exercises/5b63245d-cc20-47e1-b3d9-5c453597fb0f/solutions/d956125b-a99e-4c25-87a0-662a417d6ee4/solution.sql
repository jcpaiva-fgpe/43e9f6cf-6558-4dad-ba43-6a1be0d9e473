ALTER TABLE equipo ADD director varchar(30) NULL;
ALTER TABLE equipo ADD activo CHAR(2) null check (activo in ('SI', 'NO'));
