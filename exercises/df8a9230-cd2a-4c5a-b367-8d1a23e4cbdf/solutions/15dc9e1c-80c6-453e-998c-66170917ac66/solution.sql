CREATE OR REPLACE FUNCTION default_province()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  as
$$
  declare v_cod_provincia integer;
begin
	IF new.cod_provincia is null then
		select codigo into v_cod_provincia
		from provincias
		where matricula = substring(new.carretera for 2);
		if v_cod_provincia is null then
	   		v_cod_provincia = 30;
	   	end if;
	    new.cod_provincia = v_cod_provincia;
	END IF;

	RETURN NEW;
END;
$$;

CREATE or replace TRIGGER default_province
  BEFORE INSERT
  ON incidencias
  FOR EACH ROW
  EXECUTE PROCEDURE default_province();