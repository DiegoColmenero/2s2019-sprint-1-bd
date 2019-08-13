USE M_OpFlix

SELECT * FROM Produtoras ORDER BY IdProdutora ASC
SELECT * FROM Plataformas ORDER BY IdPlataforma ASC
SELECT * FROM TiposTitulo ORDER BY IdTipoTitulo ASC
SELECT * FROM Categorias ORDER BY IdCategoria ASC
SELECT * FROM Usuarios ORDER BY IdUsuario ASC
SELECT * FROM Titulos ORDER BY IdTitulo ASC



INSERT INTO Produtoras (Produtora) 
VALUES ('Pixar'),('Netflix'),('Marvel'),('FOX'),('Paramount')

INSERT INTO Plataformas (Plataforma)
VALUES ('Cinema'),('Netflix'),('Amazon'),('Locadora')

INSERT INTO TiposTitulo (TipoTitulo)
VALUES ('Filme'),('Série'),('Documentário')

INSERT INTO Categorias (Categoria)
VALUES ('Terror'),('Ação'),('Aventura'),('Infantil')
	  ,('Ficção Científica'),('Suspense'),('Comédia'),('Informativo')

INSERT INTO Usuarios (Nome, Email, Senha, DataNascimento, TipoDeUsuario)
VALUES('Erik','erik@gmail.com','123456','2003-04-24','ADMINISTRADOR')
	 ,('Cassiana','cassiana@gmail.com','123456','2000-10-02','ADMINISTRADOR')
	 ,('Helena','helena@gmail.com','123456','1973-08-07','CLIENTE')
	 ,('Roberto','roberto@gmail.com','3110','1975-05-10','CLIENTE')
	 ,('Débora','debora@gmail.com','3110','2002-04-19','CLIENTE')

INSERT INTO Titulos (Nome, Sinopse, Duracao, DataLancamento, IdTipoTitulo, IdCategoria, IdPlataforma, IdProdutora)
VALUES ('UP Altas Aventuras','Um velhinho voa com sua casa e seus balões',3,'2019-08-13',1,3,4,1)
	  ,('Dark','Um menininho alemão viaja no tempo sem perceber',16,'2018-06-05',2,5,2,2)
	  ,('House of Cards','Tudo o que acontece por trás da casa branca',83,'2016-04-09',2,6,2,2)	  
      ,('Cosmos','Carl Segan se aventura pelo Cosmos do nosso vasto universo',10,'2019-10-17',3,8,2,2)
      ,('Dr. Estranho 2','Dr. Estranho parte para novas aventuras pela realidade alternativa',3,'2021-11-05',1,5,1,3)
      ,('The Walking Dead','O apocalipse zumbi começa e um grupo de sobreviventes tentam sobreviver',120,'2019-10-02',2,1,3,4)
      ,('A maldição da residência Hill','Uma família cresce em uma casa repleta de espíritos e tem de lidar com isso',8,'2018-12-15',2,1,2,2)
	  ,('Viúva Negra','Viúva Negra vai para o pau com seus inimigos mortais',3,'2022-04-20',1,2,1,3)
	  ,('Simpsons','A família amarela mais amada está de volta com novas aventuras',400,'1989-02-10',2,7,3,4)
	  ,('O Pianista','A história de um pianista judeu que foje do nazismo alemão',3,'2011-07-19',1,8,4,5)
	  ,('Detona Halph','Halph e sua princesa Venelope vão atrás de novas aventuras',3,'2019-05-02',1,4,1,1)
	  ,('A história de Deus com Morgan Freeman','Morgan Freeman apresenta fatos que confirmam e desmentem a história de Deus',7,'2017-02-28',3,8,2,2)
	  ,('Rei leão','Os leões dominan o reino animal',3,'2019-04-24',1,4,1,1)
	  ,('O git perfeito','A história de um ser humano com capacidades inumanas, conseguir usar o git perfeitamente',2,'2020-04-19',1,5,3,5)
	  ,('Breaking Bad','O professor Walter White entra no mundo do crime e produz metafetamina',40,'2010-10-03',2,6,2,4)


	  INSERT INTO Favoritos (IdTitulo, IdUsuario)
	  VALUES (25,2),(26,1),(26,2),(26,3),(26,4),(27,4),(27,5),(34,1),(34,2),(35,5),(36,1),(36,3),(37,2),(38,1),(38,2),(38,3),(38,4),(38,5),(39,5),(40,4),(40,5),(41,3),(41,4),(42,1),(42,3),(43,2),(43,5),(44,1),(44,2),(44,3),(44,4),(44,5),(45,1),(45,2)




