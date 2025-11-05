DO $$
DECLARE 
	nuevoIdPais INTEGER;
	idCatar INTEGER;
	idCampeonatoCatar INTEGER;
BEGIN
	SELECT MAX(id) + 1 INTO nuevoIdPais
		FROM pais;
	
	--Obtener el pais organizador
	SELECT id INTO idCatar
		FROM pais
		WHERE pais='Catar';

	IF idCatar IS NULL THEN
		INSERT INTO pais
			(id, pais, entidad)
			VALUES(nuevoIdPais, 'Catar', 'Asociación de Fútbol de Catar');
		idCatar := nuevoIdPais;
		nuevoIdPais := nuevoIdPais + 1;
	END IF;

	--Obtener el campeonato de CATAR
	SELECT id INTO idCampeonatoCatar
		FROM campeonato
		WHERE campeonato='Copa Mundial de Fútbol de 2022';

	IF idCampeonatoCatar IS NULL THEN
		SELECT MAX(id) + 1 INTO idCampeonatoCatar
			FROM campeonato;
		
		INSERT INTO campeonato
			(id, campeonato, idpais, año)
			VALUES(idCampeonatoCatar, 'Copa Mundial de Fútbol de 2022', idCatar, 2022);
	END IF;
	
END $$;