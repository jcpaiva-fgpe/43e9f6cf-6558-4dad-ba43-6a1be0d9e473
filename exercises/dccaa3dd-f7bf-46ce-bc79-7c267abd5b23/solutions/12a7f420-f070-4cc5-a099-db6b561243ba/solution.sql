select p.nombre, count(*) as num_incidencias
from incidencias i join provincias p on (i.cod_provincia = p.codigo)
where poblacion is null
group by p.nombre
order by num_incidencias desc;