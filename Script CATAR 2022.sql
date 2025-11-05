DO $$
DECLARE 
	nuevoIdPais INTEGER; nuevoIdCiudad INTEGER; nuevoIdEstadio INTEGER;
	idCatar INTEGER; idCampeonatoCatar INTEGER;
	idEstadio1 INTEGER; idEstadio2 INTEGER; idEstadio3 INTEGER; idEstadio4 INTEGER;
	idEstadio5 INTEGER; idEstadio6 INTEGER; idEstadio7 INTEGER; idEstadio8 INTEGER;
	idCiudad1 INTEGER; idCiudad2 INTEGER; idCiudad3 INTEGER; idCiudad4 INTEGER; idCiudad5 INTEGER;
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

	--Obtener los estadios
	SELECT MAX(id) + 1 INTO nuevoIdCiudad
		FROM ciudad;

	SELECT MAX(id) + 1 INTO nuevoIdEstadio
		FROM estadio;

	SELECT id INTO idEstadio1
		FROM estadio 
		WHERE estadio = 'Estadio Al Bayt';
	IF idEstadio1 IS NULL THEN
		SELECT id INTO idCiudad1
			FROM ciudad
			WHERE ciudad = 'Jor';
		IF idCiudad1 IS NULL THEN
			INSERT INTO ciudad
                (id, ciudad, idpais) 
				VALUES(nuevoIdCiudad, 'Jor', idCatar);
			idCiudad1 := nuevoIdCiudad;
			nuevoIdCiudad := nuevoIdCiudad + 1;
		END IF;
		INSERT INTO estadio
			(id, estadio, capacidad, idciudad) 
			VALUES(nuevoIdEstadio, 'Estadio Al Bayt', 68895, idCiudad1);
		idEstadio1 := nuevoIdEstadio;
		nuevoIdEstadio := nuevoIdEstadio + 1;
	END IF;

	SELECT id INTO idEstadio2
		FROM estadio 
		WHERE estadio = 'Estadio de Lusail';
	IF idEstadio2 IS NULL THEN
		SELECT id INTO idCiudad2
			FROM ciudad
			WHERE ciudad = 'Lusail';
		IF idCiudad2 IS NULL THEN
			INSERT INTO ciudad
                (id, ciudad, idpais) 
				VALUES(nuevoIdCiudad, 'Lusail', idCatar);
			idCiudad2 := nuevoIdCiudad;
			nuevoIdCiudad := nuevoIdCiudad + 1;
		END IF;
		INSERT INTO estadio
			(id, estadio, capacidad, idciudad) 
			VALUES(nuevoIdEstadio, 'Estadio de Lusail', 88966, idCiudad2);
		idEstadio2 := nuevoIdEstadio;
		nuevoIdEstadio := nuevoIdEstadio + 1;
	END IF;

	SELECT id INTO idCiudad3
		FROM ciudad
		WHERE ciudad = 'Doha';
	IF idCiudad3 IS NULL THEN
		INSERT INTO ciudad
			(id, ciudad, idpais) 
			VALUES(nuevoIdCiudad, 'Doha', idCatar);
		idCiudad3 := nuevoIdCiudad;
		nuevoIdCiudad := nuevoIdCiudad + 1;
	END IF;


	SELECT id INTO idEstadio3
		FROM estadio 
		WHERE estadio = 'Estadio 974';
	IF idEstadio3 IS NULL THEN
		INSERT INTO estadio
			(id, estadio, capacidad, idciudad) 
			VALUES(nuevoIdEstadio, 'Estadio 974', 44089, idCiudad3);
		idEstadio3 := nuevoIdEstadio;
		nuevoIdEstadio := nuevoIdEstadio + 1;
	END IF;

	SELECT id INTO idEstadio4
		FROM estadio 
		WHERE estadio = 'Estadio Al Thumama';
	IF idEstadio4 IS NULL THEN
		INSERT INTO estadio
			(id, estadio, capacidad, idciudad) 
			VALUES(nuevoIdEstadio, 'Estadio Al Thumama', 44400, idCiudad3);
		idEstadio4 := nuevoIdEstadio;
		nuevoIdEstadio := nuevoIdEstadio + 1;
	END IF;

	SELECT id INTO idCiudad4
		FROM ciudad
		WHERE ciudad = 'Rayán';
	IF idCiudad4 IS NULL THEN
		INSERT INTO ciudad
			(id, ciudad, idpais) 
			VALUES(nuevoIdCiudad, 'Rayán', idCatar);
		idCiudad4 := nuevoIdCiudad;
		nuevoIdCiudad := nuevoIdCiudad + 1;
	END IF;

	SELECT id INTO idEstadio5
		FROM estadio 
		WHERE estadio = 'Ciudad de la Educación';
	IF idEstadio5 IS NULL THEN
		INSERT INTO estadio
			(id, estadio, capacidad, idciudad) 
			VALUES(nuevoIdEstadio, 'Ciudad de la Educación', 44667, idCiudad4);
		idEstadio5 := nuevoIdEstadio;
		nuevoIdEstadio := nuevoIdEstadio + 1;
	END IF;

	SELECT id INTO idEstadio6
		FROM estadio 
		WHERE estadio = 'Áhmad bin Ali';
	IF idEstadio6 IS NULL THEN
		INSERT INTO estadio
			(id, estadio, capacidad, idciudad) 
			VALUES(nuevoIdEstadio, 'Áhmad bin Ali', 45032, idCiudad4);
		idEstadio6 := nuevoIdEstadio;
		nuevoIdEstadio := nuevoIdEstadio + 1;
	END IF;

	SELECT id INTO idEstadio7
		FROM estadio 
		WHERE estadio = 'Estadio Internacional Khalifa';
	IF idEstadio7 IS NULL THEN
		INSERT INTO estadio
			(id, estadio, capacidad, idciudad) 
			VALUES(nuevoIdEstadio, 'Estadio Internacional Khalifa', 45857, idCiudad4);
		idEstadio7 := nuevoIdEstadio;
		nuevoIdEstadio := nuevoIdEstadio + 1;
	END IF;

	SELECT id INTO idEstadio8
		FROM estadio 
		WHERE estadio = 'Estadio Al Janoub';
	IF idEstadio8 IS NULL THEN
		SELECT id INTO idCiudad5
			FROM ciudad
			WHERE ciudad = 'Al Wakrah';
		IF idCiudad5 IS NULL THEN
			INSERT INTO ciudad
                (id, ciudad, idpais) 
				VALUES(nuevoIdCiudad, 'Al Wakrah', idCatar);
			idCiudad5 := nuevoIdCiudad;
			nuevoIdCiudad := nuevoIdCiudad + 1;
		END IF;
		INSERT INTO estadio
			(id, estadio, capacidad, idciudad) 
			VALUES(nuevoIdEstadio, 'Estadio Al Janoub', 44325, idCiudad5);
		idEstadio8 := nuevoIdEstadio;
		nuevoIdEstadio := nuevoIdEstadio + 1;
	END IF;


END $$;