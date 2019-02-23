/*
	Professor:	Daniel Silveira
	Módulo   :	Curso de SQL Server - Modelagem de Dados 
	Aula 08  :  Exclusão de tabelas, Criação de Tabelas com constraints

*/


--Inserção de um segundo resgistro
insert into Pedidos (Id,IdProduto, Quantidade,PrecoUnitário,Total,ValorIcms,Ipi,Cofins,Pis,Frete,TipoDoFrete,Observação,DataEmissao)
Values              (2 ,99       ,10        ,40           ,400  ,0        ,0  ,0     ,0  ,7.25 ,'C'        ,'Entregar até terça-feira',getdate())
go 


--Apagando uma tabela do banco de dados 
DROP TABLE Pedidos


CREATE TABLE dbo.Pedidos(
	Id int IDENTITY(1,1) NOT NULL,
	IdProduto int NULL,
	Quantidade int NULL,
	PrecoUnitário decimal(10, 2) NULL,
	Total money NOT NULL,
	ValorIcms decimal(10, 2) NULL DEFAULT ((0)),
	Ipi decimal(10, 2) NULL DEFAULT ((0)),
	Cofins decimal(10, 2) NULL DEFAULT ((0)),
	Pis decimal(10, 2) NULL DEFAULT ((0)),
	Desconto decimal(10, 2) NULL DEFAULT ((0)),
	Frete decimal(10, 2) NULL DEFAULT ((0)),
	TipoDoFrete char(1) NULL,
	Observação varchar(80) NULL,
	DataEmissao datetime NULL,
	IdCliente int NOT NULL DEFAULT ((0))
) 
GO
