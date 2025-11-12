DO $$
DECLARE 
	nuevoIdPais INTEGER; nuevoIdCiudad INTEGER; nuevoIdEstadio INTEGER; nuevoIdGrupo INTEGER;
	idCatar INTEGER; idCampeonatoCatar INTEGER;
	idEstadio1 INTEGER; idEstadio2 INTEGER; idEstadio3 INTEGER; idEstadio4 INTEGER;
	idEstadio5 INTEGER; idEstadio6 INTEGER; idEstadio7 INTEGER; idEstadio8 INTEGER;
	idCiudad1 INTEGER; idCiudad2 INTEGER; idCiudad3 INTEGER; idCiudad4 INTEGER; idCiudad5 INTEGER;
	idPais1Grupo INTEGER; idPais2Grupo INTEGER; idPais3Grupo INTEGER; idPais4Grupo INTEGER;
	totalPaises INTEGER; nuevoIdEncuentro INTEGER;
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

	--obtener los grupos del campeonato
	SELECT id INTO nuevoIdGrupo
		FROM grupo
		WHERE grupo='A'
		AND idcampeonato=idCampeonatoCatar;

	IF nuevoIdGrupo IS NULL THEN
		SELECT MAX(id) + 1 INTO nuevoIdGrupo
			FROM grupo;

		--se van a agregar los nuevos grupos
		INSERT INTO grupo
			(id, grupo, idcampeonato)
			VALUES
			(nuevoIdGrupo, 'A', idCampeonatoCatar),
			(nuevoIdGrupo+1, 'B', idCampeonatoCatar),
			(nuevoIdGrupo+2, 'C', idCampeonatoCatar),
			(nuevoIdGrupo+3, 'D', idCampeonatoCatar),
			(nuevoIdGrupo+4, 'E', idCampeonatoCatar),
			(nuevoIdGrupo+5, 'F', idCampeonatoCatar),
			(nuevoIdGrupo+6, 'G', idCampeonatoCatar),
			(nuevoIdGrupo+7, 'H', idCampeonatoCatar);
	END IF;

	--obtener los paises del grupo A
	idPais1Grupo = idCatar;

	SELECT id INTO idPais2Grupo 
		FROM pais
		WHERE pais = 'Ecuador';
	IF idPais2Grupo IS NULL THEN
		INSERT INTO pais
			(id, pais, entidad)
			VALUES(nuevoIdPais, 'Ecuador', '');
		idPais2Grupo := nuevoIdPais;
		nuevoIdPais := nuevoIdPais + 1;
	END IF;
	
	SELECT id INTO idPais3Grupo 
		FROM pais
		WHERE pais = 'Senegal';
	IF idPais3Grupo IS NULL THEN
		INSERT INTO pais
			(id, pais, entidad)
			VALUES(nuevoIdPais, 'Senegal', '');
		idPais3Grupo := nuevoIdPais;
		nuevoIdPais := nuevoIdPais + 1;
	END IF;

	SELECT id INTO idPais4Grupo 
		FROM pais
		WHERE pais = 'Holanda';
	IF idPais4Grupo IS NULL THEN
		INSERT INTO pais
			(id, pais, entidad)
			VALUES(nuevoIdPais, 'Holanda', '');
		idPais4Grupo := nuevoIdPais;
		nuevoIdPais := nuevoIdPais + 1;
	END IF;

	SELECT COUNT(*) INTO totalPaises
		FROM grupopais
		WHERE idgrupo = nuevoIdGrupo;
	IF totalPaises = 0 THEN
		INSERT INTO grupopais
			(idgrupo, idpais)
			VALUES
			(nuevoIdGrupo, idPais1Grupo),
			(nuevoIdGrupo, idPais2Grupo),
			(nuevoIdGrupo, idPais3Grupo),
			(nuevoIdGrupo, idPais4Grupo);
	END IF;

	--registrar los encuentros
	SELECT MAX(id) + 1 INTO nuevoIdEncuentro
			FROM encuentro;

	--Catar 0 - 2 Ecuador
	IF NOT EXISTS(SELECT * FROM encuentro
				WHERE idpais1 = idPais1Grupo AND idpais2 = idPais2Grupo
				AND idcampeonato = idCampeonatoCatar AND idfase = 1) THEN
		INSERT INTO encuentro
			(id, idpais1, goles1, idpais2, goles2, fecha, idestadio, idfase, idcampeonato)
			VALUES (nuevoIdEncuentro, idPais1Grupo, 0, idPais2Grupo, 2, '2022-11-20', idestadio1, 1, idCampeonatoCatar);
			nuevoIdEncuentro = nuevoIdEncuentro + 1;
	END IF;

	--Catar 1 - 3 Senegal
	IF NOT EXISTS(SELECT * FROM encuentro
				WHERE idpais1 = idPais1Grupo AND idpais2 = idPais3Grupo
				AND idcampeonato = idCampeonatoCatar AND idfase = 1) THEN
		INSERT INTO encuentro
			(id, idpais1, goles1, idpais2, goles2, fecha, idestadio, idfase, idcampeonato)
			VALUES (nuevoIdEncuentro, idPais1Grupo, 1, idPais3Grupo, 3, '2022-11-25', idestadio4, 1, idCampeonatoCatar);
			nuevoIdEncuentro = nuevoIdEncuentro + 1;
	END IF;

	--Holanda 1 - 1 Ecuador
	IF NOT EXISTS(SELECT * FROM encuentro
				WHERE idpais1 = idPais4Grupo AND idpais2 = idPais2Grupo
				AND idcampeonato = idCampeonatoCatar AND idfase = 1) THEN
		INSERT INTO encuentro
			(id, idpais1, goles1, idpais2, goles2, fecha, idestadio, idfase, idcampeonato)
			VALUES (nuevoIdEncuentro, idPais4Grupo, 1, idPais2Grupo, 1, '2022-11-25', idestadio7, 1, idCampeonatoCatar);
			nuevoIdEncuentro = nuevoIdEncuentro + 1;
	END IF;

	--Ecuador 1 - 2 Senegal
	IF NOT EXISTS(SELECT * FROM encuentro
				WHERE idpais1 = idPais2Grupo AND idpais2 = idPais3Grupo
				AND idcampeonato = idCampeonatoCatar AND idfase = 1) THEN
		INSERT INTO encuentro
			(id, idpais1, goles1, idpais2, goles2, fecha, idestadio, idfase, idcampeonato)
			VALUES (nuevoIdEncuentro, idPais2Grupo, 1, idPais3Grupo, 2, '2022-11-29', idestadio7, 1, idCampeonatoCatar);
			nuevoIdEncuentro = nuevoIdEncuentro + 1;
	END IF;

	--Holanda 2 - 0 Catar
	IF NOT EXISTS(SELECT * FROM encuentro
				WHERE idpais1 = idPais4Grupo AND idpais2 = idPais1Grupo
				AND idcampeonato = idCampeonatoCatar AND idfase = 1) THEN
		INSERT INTO encuentro
			(id, idpais1, goles1, idpais2, goles2, fecha, idestadio, idfase, idcampeonato)
			VALUES (nuevoIdEncuentro, idPais4Grupo, 2, idPais1Grupo, 0, '2022-11-29', idestadio1, 1, idCampeonatoCatar);
			nuevoIdEncuentro = nuevoIdEncuentro + 1;
	END IF;

	--obtener los paises del grupo B
	SELECT id INTO idPais1Grupo 
		FROM pais
		WHERE pais = 'Inglaterra';
	IF idPais1Grupo IS NULL THEN
		INSERT INTO pais
			(id, pais, entidad)
			VALUES(nuevoIdPais, 'Inglaterra', '');
		idPais1Grupo := nuevoIdPais;
		nuevoIdPais := nuevoIdPais + 1;
	END IF;

	SELECT id INTO idPais2Grupo 
		FROM pais
		WHERE pais = 'Irán';
	IF idPais2Grupo IS NULL THEN
		INSERT INTO pais
			(id, pais, entidad)
			VALUES(nuevoIdPais, 'Irán', '');
		idPais2Grupo := nuevoIdPais;
		nuevoIdPais := nuevoIdPais + 1;
	END IF;
	
	SELECT id INTO idPais3Grupo 
		FROM pais
		WHERE pais = 'Estados Unidos';
	IF idPais3Grupo IS NULL THEN
		INSERT INTO pais
			(id, pais, entidad)
			VALUES(nuevoIdPais, 'Estados Unidos', '');
		idPais3Grupo := nuevoIdPais;
		nuevoIdPais := nuevoIdPais + 1;
	END IF;

	SELECT id INTO idPais4Grupo 
		FROM pais
		WHERE pais = 'Gales';
	IF idPais4Grupo IS NULL THEN
		INSERT INTO pais
			(id, pais, entidad)
			VALUES(nuevoIdPais, 'Gales', '');
		idPais4Grupo := nuevoIdPais;
		nuevoIdPais := nuevoIdPais + 1;
	END IF;

	SELECT COUNT(*) INTO totalPaises
		FROM grupopais
		WHERE idgrupo = nuevoIdGrupo+1;
	IF totalPaises = 0 THEN
		INSERT INTO grupopais
			(idgrupo, idpais)
			VALUES
			(nuevoIdGrupo+1, idPais1Grupo),
			(nuevoIdGrupo+1, idPais2Grupo),
			(nuevoIdGrupo+1, idPais3Grupo),
			(nuevoIdGrupo+1, idPais4Grupo);
	END IF;

	DROP TABLE IF EXISTS tmp_encuentros;


	CREATE TEMP TABLE tmp_encuentros(
		id int,
		IdPais1 int, 
		IdPais2 int, 
		IdFase int, 
		IdCampeonato int, 
		IdEstadio int, 
		Fecha DATE, 
		Goles1 int, 
		Goles2 int
	);

	INSERT INTO tmp_encuentros
		(id, idpais1, goles1, idpais2, goles2, fecha, idestadio, idfase, idcampeonato)
		VALUES(nuevoIdEncuentro, idPais1Grupo, 6, idPais2Grupo, 2, '2022-11-21', idestadio7, 1, idCampeonatoCatar),
			(nuevoIdEncuentro+1, idPais3Grupo, 1, idPais4Grupo, 1, '2022-11-21', idestadio6, 1, idCampeonatoCatar),
			(nuevoIdEncuentro+2, idPais4Grupo, 0, idPais2Grupo, 2, '2022-11-25', idestadio6, 1, idCampeonatoCatar),
			(nuevoIdEncuentro+3, idPais1Grupo, 0, idPais3Grupo, 0, '2022-11-25', idestadio1, 1, idCampeonatoCatar),
			(nuevoIdEncuentro+4, idPais4Grupo, 0, idPais1Grupo, 3, '2022-11-29', idestadio6, 1, idCampeonatoCatar),
			(nuevoIdEncuentro+5, idPais2Grupo, 0, idPais3Grupo, 1, '2022-11-29', idestadio4, 1, idCampeonatoCatar);
	
	INSERT INTO encuentro
		(id, idpais1, goles1, idpais2, goles2, fecha, idestadio, idfase, idcampeonato)
		SELECT id, idpais1, goles1, idpais2, goles2, fecha, idestadio, idfase, idcampeonato
			FROM tmp_encuentros
		ON CONFLICT(idpais1, idpais2, idcampeonato, idfase) 
			DO UPDATE 
				SET goles1 = EXCLUDED.goles1,
					goles2 = EXCLUDED.goles2,
					idestadio = EXCLUDED.idestadio,
					fecha = EXCLUDED.fecha;

	DROP TABLE IF EXISTS tmp_encuentros;

END $$;