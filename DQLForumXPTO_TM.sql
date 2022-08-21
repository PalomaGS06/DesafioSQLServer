/* Usar Database 'ForumXPTO_TM' */
USE ForumXPTO_TM
GO
/* Selecionar apenas as colunas 'Nickname' e 'Email' da tabela Gamers, para visualização */
SELECT
	Nickname, 
	Email 
FROM 
	Gamers;
GO

/* Selecionar apenas a coluna 'Nome' da tabela Grupos, para visualização */
SELECT
	Nome 
FROM 
	Grupos;
GO

/* Selecionar apenas as colunas 'Categoria' e 'Descricao' da tabela Categoria, para visualização */
SELECT
	Categoria, 
	Descricao 
FROM 
	Categorias;
GO


/* Selecionar tudo da tabela 'Categoria' em ordem crescente */
SELECT * FROM Categorias ORDER BY Categoria ASC;  /* ORDER BY seleciona por ordem alfabética. ASC = Forma ascendente; DESC = Forma descedente*/
GO

/* Selecionar tudo da tabela 'Categoria' em ordem decrescente */
SELECT * FROM Postagens ORDER BY Titulo DESC;  
GO

/* Selecionar tudo da Tabela 'Categorias' e filtrar o 'id' maior que 2 e menor que 4, ou seja, o 'id' = 3 */
SELECT * FROM Categorias WHERE id > 2 AND id < 4;

/* Juntar as tabelas 'Gamers' e 'Grupos' atraves da coluna 'id' de cada tabela */
SELECT * FROM Gamers
	INNER JOIN Grupos ON Grupos.id = Gamers.id;
GO

/* Juntar as tabelas 'Gamers' e 'Postagens' atraves da coluna 'GamerId' e 'id' */
SELECT * FROM Gamers
	INNER JOIN Postagens ON Postagens.GamerId = Gamers.id;
GO

/* Junção da tabela 'Equipe' através das chaves estrangeiras das tabelas 'Gamers' e 'Grupos' */
SELECT * FROM Equipe
	INNER JOIN Gamers ON Gamers.id = Equipe.GamerId
	INNER JOIN Grupos ON Grupos.id = Equipe.GrupoId;

GO

/* Junção da parte esquerda das tabelas 'Gamers' e 'Grupos' */
SELECT * FROM Gamers
	LEFT JOIN Grupos ON Grupos.id = Gamers.id;
GO

/* Junção da parte direita das tabelas 'Gamers' e 'Grupos' */
SELECT * FROM Gamers
	RIGHT JOIN Grupos ON Grupos.id = Gamers.id;
GO