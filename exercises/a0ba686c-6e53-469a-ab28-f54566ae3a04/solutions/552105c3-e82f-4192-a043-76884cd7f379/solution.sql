select i.carretera, i.pk_final, i.pk_inicial, i.pk_final - i.pk_inicial as distancia_afectada
from incidencias i
where cod_provincia = (select codigo from provincias p2 where p2.nombre = 'Murcia')
and i.fechahora between '2022-07-15' and '2022-07-31';