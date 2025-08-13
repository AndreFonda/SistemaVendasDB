CREATE TABLE [dbo].[ItemPedido]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[IdPedido] INT NOT NULL,
	[IdProduto] INT NOT NULL,
	[Quantidade] INT NOT NULL,
	[PrecoUnitario] DECIMAL(10, 2) NOT NULL,
	CONSTRAINT FK_ItemPedido_Pedido FOREIGN KEY ([IdPedido]) REFERENCES [dbo].Pedido([IdPedido]),
	CONSTRAINT FK_ItemPedido_Produto FOREIGN KEY ([IdProduto]) REFERENCES [dbo].Produto([IdProduto])

);
