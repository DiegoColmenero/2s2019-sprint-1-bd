USE M_OpFlix
USE M_OpFlix
SELECT * FROM Produtoras ORDER BY IdProdutora ASC
SELECT * FROM Plataformas ORDER BY IdPlataforma ASC
SELECT * FROM TiposTitulo ORDER BY IdTipoTitulo ASC
SELECT * FROM Categorias ORDER BY IdCategoria ASC
SELECT * FROM Usuarios ORDER BY IdUsuario ASC
SELECT * FROM Titulos ORDER BY IdTitulo ASC
SELECT * FROM Favoritos



CREATE PROCEDURE VerTitulos 
AS
SELECT Titulos.Nome, Titulos.Sinopse, Titulos.Duracao, 
TiposTitulo.IdTipoTitulo, Categorias.Categoria, 
Plataformas.Plataforma, Produtoras.Produtora

FROM Titulos
FULL JOIN TiposTitulo
ON Titulos.IdTipoTitulo = TiposTitulo.IdTipoTitulo
FULL JOIN Categorias
ON Categorias.IdCategoria = Titulos.IdCategoria
FULL JOIN Plataformas
ON Plataformas.IdPlataforma = Titulos.IdPlataforma
FULL JOIN Produtoras
ON Produtoras.IdProdutora = Titulos.IdProdutora

EXEC VerTitulos; --Proc para ver todos os títulos e suas respectivas características



CREATE PROCEDURE VerOsFilmesPreferidos
AS
SELECT Titulos.Nome, Usuarios.Nome, Favoritos.IdUsuario

FROM Titulos
JOIN Favoritos
ON Titulos.IdTitulo = Favoritos.IdTitulo
JOIN Usuarios
ON Usuarios.IdUsuario = Favoritos.IdUsuario

EXEC VerOsFilmesPreferidos --Proc para ver os títulos e os usuários que tornaram favoritos


SELECT COUNT(*) AS QuantidadeDeUsuarios FROM Usuarios; --Mostra a quantidade de usuários cadastrados
SELECT COUNT(*) AS QuantidadeDeTitulos FROM Titulos; --Mostra a quantidade de titulos cadastrados






CREATE FUNCTION MostrarQuantosDiasFaltam


SELECT DATEDIFF(DAY, Titulos.DataLancamento, GETDATE()) AS Diferenca , 'O título ja foi lançado' IF(Diferenca < 0)

 
FROM Titulos














