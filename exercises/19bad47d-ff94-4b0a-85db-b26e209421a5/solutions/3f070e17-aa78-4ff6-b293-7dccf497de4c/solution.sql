select p.nombre, COUNT(*)
from incidencias i
join niveles n on (n.codigo = i.cod_nivel)
join provincias p on (i.cod_provincia = p.codigo)
where UPPER(n.nivel) = 'ROJO'
group by p.nombre
having COUNT(*) >= all(
	select COUNT(*)
	from incidencias i
	join niveles n on (n.codigo = i.cod_nivel)
	join provincias p on (i.cod_provincia = p.codigo)
	where UPPER(n.nivel) = 'ROJO'
	group by p.nombre
)
order by nombre;