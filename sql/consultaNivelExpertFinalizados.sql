-- Quantas vezes o mapa foi finalizado.
-- Contando quantas vezes o ID aparece

-- 1° Passo criando uma tabela temporaria para realizar a consulta
CREATE TEMPORARY TABLE contadorFinalizacao
	select 
    -- selecionando o id fazendo a contangem e colocando um apelido na coluna
		id, count(id) as 'finalizacoes'
	from 
		`clears` -- tabela de origem
	group by  -- fazendo o agrupamento
		id;
        
  -- items que quero selecionar para mostrar na tabela      
select contadorFinalizacao.id, contadorFinalizacao.finalizacoes, courses.title
	FROM 
    -- tabela que estou realizando a consulta
		contadorFinalizacao
	INNER JOIN
    -- juntando as informações das duas tabelas que necessito para fazer a contangem e mostrar as informações
		courses on (courses.id = contadorFinalizacao.id)
	where 
    -- fazendo o filtro da informação que desejo verificar
		courses.difficulty = 'expert'
	ORDER BY
    -- odernando a tabela a partir da 2° coluna ordendando pelo 10 primeiros a vencer no nivel escolhido
		2 desc limit 10;