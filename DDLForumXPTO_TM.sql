/* Criando o Banco de Dados 'ForumXPTO' */
 CREATE DATABASE ForumXPTO;
GO 
/* Alterando o nome para 'ForumXPTO_TM' */
ALTER DATABASE ForumXPTO MODIFY NAME = ForumXPTO_TM;
GO

/* Usar esse Database */
USE ForumXPTO_TM
GO

/* Criando tabelas dentro do BD 'ForumXPTO' */

CREATE TABLE Gamers(
	/* identificação da chave primaria abaixo. Iniciar com 'id' = 1 e não nulo */
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nome NVARCHAR(MAX),
	Email NVARCHAR(MAX),
	Nickname NVARCHAR(MAX),	
	Senha NVARCHAR(MAX)
);
GO

CREATE TABLE Postagem_Categorias(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Categoria NVARCHAR(MAX)
);
GO

CREATE TABLE Categorias(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Categoria NVARCHAR(MAX),
	Descricao NVARCHAR(MAX)
);
GO

CREATE TABLE Grupos(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nome NVARCHAR(MAX),
	Categoria_id INT NOT NULL,
	/* Criando uma chave estrangeira com a coluna 'Categoria_id', utilizando a restrição CONSTRAINT */
	CONSTRAINT FK_Categoria_id FOREIGN KEY (Categoria_id) REFERENCES Categorias (id)
);
GO


CREATE TABLE Equipe(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,

	/* Criando chaves estrangeiras sem restrições  */
	GrupoId INT
	FOREIGN KEY (GrupoId) REFERENCES Grupos(id),

	GamerId INT
	FOREIGN KEY (GamerId) REFERENCES Gamers(id)
);
GO

CREATE TABLE Postagens(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Titulo NVARCHAR(MAX),
	Descricao NVARCHAR(MAX),
	HorarioDia DATETIME, /* DATETIME = formato americano de manipulação de dias e horas */

	PostCategoriaId INT
	FOREIGN KEY (PostCategoriaId) REFERENCES Postagem_Categorias(id),

	GamerId INT
	FOREIGN KEY (GamerId) REFERENCES Gamers(id)
);
GO

CREATE TABLE Jogos(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nome NVARCHAR(MAX),
	Descricao NVARCHAR(MAX)
);
GO

/* Excluir tabela 'Jogos' */
DROP TABLE Jogos;
GO 

/* Alterar, editar tabela. Excluindo a chave estrangeira 'FK_Categoria_id'  */
ALTER TABLE Grupos DROP CONSTRAINT FK_Categoria_id;
GO

/* Adicionando coluna 'CategoriaId' do tipo inteiro e não nulo */
ALTER TABLE Grupos ADD CategoriaId INT NOT NULL;
GO

/* Adicionando a coluna 'CategoriaId' como chave estrangeira */
ALTER TABLE Grupos ADD CONSTRAINT FK_Categoria_Id FOREIGN KEY (CategoriaId) REFERENCES Categorias(id);
GO

/* Excluindo coluna 'Categoria_id' */
ALTER TABLE Grupos DROP COLUMN Categoria_id;
GO

/* Adicionando mais uma chave estrangeira para a tabela 'Postagens' */
ALTER TABLE Postagens ADD GrupoId INT FOREIGN KEY (GrupoId) REFERENCES Grupos(id);
GO