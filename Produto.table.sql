CREATE TABLE [dbo].[Produto]
(
	[IdProduto] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[Nome] NVARCHAR(150) NOT NULL,
	[Descricao] NVARCHAR(500) NULL,
	[Preco] DECIMAL(10, 2) NOT NULL,
	[Estoque] INT NOT NULL DEFAULT 0,
	[IdCategoria] INT NOT NULL,
	CONSTRAINT FK_Produto_Categoria FOREIGN KEY (IdCategoria) REFERENCES Categoria(Id)


)
