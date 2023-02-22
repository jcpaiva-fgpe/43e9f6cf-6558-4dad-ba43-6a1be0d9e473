select carretera, poblacion from incidencias i join provincias p on (cod_provincia = p.codigo) join comunidades c on (c.codigo = p.cod_comunidad)
where c.nombre = 'Cataluña' and poblacion < 'E'
order by id;