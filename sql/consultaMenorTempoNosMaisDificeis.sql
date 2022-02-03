USE marioMakerMod3;
-- Quais os mapas com menor tempo record que tem como dificuldade super expert

-- Selecionando os mapas com a dificuldade 'superExpert'
CREATE TEMPORARY TABLE mapas_mais_dificeis
	SELECT 
		id, title 
	FROM 
		courses 
	WHERE 
		`difficulty` = 'superExpert';

-- Retorna o nome do mapa e ID, o player que conseguiu o record e o menor tempo dentre os mapas mais difíceis
SELECT records.id, mapas_mais_dificeis.title, records.player, records.timeRecord
	FROM 
		mapas_mais_dificeis
	INNER JOIN
		records on (records.id = mapas_mais_dificeis.id)
	ORDER BY
		4 ASC LIMIT 5;
