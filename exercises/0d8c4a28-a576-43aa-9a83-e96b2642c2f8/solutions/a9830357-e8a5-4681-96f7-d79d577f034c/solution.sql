with coste as (select count(*)*100 n
						from artistas_espectaculos join espectaculos on( id=espectaculo_id) 
					    where nombre='Trapecio volante'),
	 total as (select n+600 as n from coste),
	 ventas as (select count(*) n
								  from ventas v join funciones f on(f.id=idfuncion) 
              					                join espectaculos e on (espectaculo_id=e.id)
								  where nombre='Trapecio volante')
update funciones
set precio = (select n from total) / (select n from ventas)
from espectaculos e
where e.id=espectaculo_id and nombre='Trapecio volante';