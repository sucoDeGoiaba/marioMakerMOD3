USE marioMakerMod3;

-- Contando quantidade de Likes referente aos IDS(Mapas) e armazenando em uma Temp View.
CREATE TEMPORARY TABLE contandoLikes
	SELECT id AS 'id_mapas' , COUNT(id) AS 'qnt_likes' 
    FROM 
		`likes` 
    GROUP BY 
		`id`;

-- Retorna os 10 mapas com mais likes junto com seus Titulos.
SELECT b.title, a.qnt_likes 
	FROM 
		contandoLikes AS a 
	INNER JOIN
		courses AS b ON (a.id_mapas = b.id) 
	ORDER BY 
		2 DESC LIMIT 10;

