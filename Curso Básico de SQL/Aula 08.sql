/*
	Professor:	Daniel Silveira
	M�dulo   :	Curso de SQL Server - Modelagem de Dados 
	Aula 08  :  Exclus�o de tabelas, Cria��o de Tabelas com constraints

*/


--Inser��o de um segundo resgistro
insert into Pedidos (Id,IdProduto, Quantidade,PrecoUnit�rio,Total,ValorIcms,Ipi,Cofins,Pis,Frete,TipoDoFrete,Observa��o,DataEmissao)
Values              (2 ,99       ,10        ,40           ,400  ,0        ,0  ,0     ,0  ,7.25 ,'C'        ,'Entregar at� ter�a-feira',getdate())
go 


--Apagando uma tabela do banco de dados 
DROP TABLE Pedidos


CREATE TABLE dbo.Pedidos(
	Id int IDENTITY(1,1) NOT NULL,
	IdProduto int NULL,
	Quantidade int NULL,
	PrecoUnit�rio decimal(10, 2) NULL,
	Total money NOT NULL,
	ValorIcms decimal(10, 2) NULL DEFAULT ((0)),
	Ipi decimal(10, 2) NULL DEFAULT ((0)),
	Cofins decimal(10, 2) NULL DEFAULT ((0)),
	Pis decimal(10, 2) NULL DEFAULT ((0)),
	Desconto decimal(10, 2) NULL DEFAULT ((0)),
	Frete decimal(10, 2) NULL DEFAULT ((0)),
	TipoDoFrete char(1) NULL,
	Observa��o varchar(80) NULL,
	DataEmissao datetime NULL,
	IdCliente int NOT NULL DEFAULT ((0))
) 
GO
