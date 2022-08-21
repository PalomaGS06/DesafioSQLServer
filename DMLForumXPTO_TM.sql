/* Utilizar Banco de Dados 'ForumXPTO_TM' */
USE ForumXPTO_TM;
GO
/* Inserindo dados para as colunas das tabelas abaixo*/
INSERT INTO Gamers (Nome, Email, Nickname, Senha) VALUES ('Paloma', 'paloma@email.com', 'EagleGirl', 'linceps');
INSERT INTO Gamers (Nome, Email, Nickname, Senha) VALUES ('Fernando', 'fernando@email.com', 'OmegaTheHead', 'fer07');
INSERT INTO Gamers (Nome, Email, Nickname, Senha) VALUES ('Lucis', 'lucis@email.com', 'LucisTheWhite', 'twister');
INSERT INTO Gamers (Nome, Email, Nickname, Senha) VALUES ('Penumbra', 'penumbra@email.com', 'Iris', 'twisterolder');
INSERT INTO Gamers (Nome, Email, Nickname, Senha) VALUES ('Haru', 'haru@email.com', 'TheDanger', 'cutegerbil');

INSERT INTO Postagem_Categorias (Categoria) VALUES ('Experiencia'),
												   ('Campeonatos'), 
												   ('Dicas'),
												   ('Evolucao'),
												   ('Conquistas');

INSERT INTO Categorias (Categoria, Descricao) VALUES ('FPS', 'Modalidade relacionada a jogos de tiro, sobrevivencia'),
													 ('Esporte', 'Categoria que engloba diversos esportes nos jogos'),
												     ('RPG', 'Role-Playing Game, jogos que envolvem estratégia, descobertas e pura interpretacao'),
												     ('Aventura', 'Jogos de explorar ambientes, derrotar inimigos, dropar itens, entre outras acoes'),
												     ('Simulador', 'Jogos que interagem com o jogador diretamente, dando a impressao de realidade virtual');


INSERT INTO Grupos (Nome, CategoriaId) VALUES ('TheWitchers', 3),  
											  ('OlimpiadaEA', 2),  
											  ('DeadSpace', 1),  
											  ('Avatar', 5), 
											  ('TheZeldas', 4),  
											  ('FinalKingdom', 3);

INSERT INTO Equipe (GrupoId, GamerId) VALUES (2, 2),(1, 4),(3, 1),(4, 5),(5, 3);

INSERT INTO Postagens (Titulo, Descricao, HorarioDia, PostCategoriaId, GamerId, GrupoId) VALUES ('The Legend Of Zelda DETONADO', 'Zerei o jogo do Zelda finalmente', GETDATE(), 5, 1, 5),
																					   ('Bau perto da cidade', 'bau de espada a caminho da cidade no Zelda Majora Mask', GETDATE(), 3, 5, 5),
																					   ('Quase morri', 'nesse jogo de trem do simulador, tem um buraco antes da chegada', GETDATE(), 1, 3, 4),
																					   ('Nitro 5x', 'Melhorei no equipamento do meu carro no Rocket League', GETDATE(), 4, 2, 2),
																					   ('Se esconda!', 'Alcance o maior rank de tiros se escondendo e atirando', GETDATE(), 3, 4, 3),
																					   ('Torneio Nacional', 'Competicao entre players de outras regioes', GETDATE(), 2, 2, 2);

			
/* Atualizando/editando o dado da coluna 'Nome' localizado no id = 2  da tabela 'Grupos' */			
UPDATE Grupos SET Nome = 'EASports' WHERE id = 2;

/* Deletando o dado 'Experiencia' da coluna 'Categoria' da tabela 'Postagem_Categorias' */
/* DELETE FROM Postagem_Categorias WHERE Categoria = 'Experiencia'; */ 

