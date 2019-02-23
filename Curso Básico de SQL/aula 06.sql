/*
	Professor:	Daniel Silveira
	Módulo   :	Curso de SQL Server - Modelagem de Dados 
	Aula 06  :  Criando uma tabela no banco de dados

*/


--Seleciona o banco de dados VENDAS
Use VENDAS;
GO


--Cria uma tabela de pedidos no nosso banco de dados
CREATE TABLE Pedidos(
	Id int,
	IdProduto int ,
	Quantidade int ,
	PrecoUnitário decimal(10, 2) ,
	Total money  ,
	ValorIcms decimal(10, 2)   ,
	Ipi decimal(10, 2)   ,
	Cofins decimal(10, 2)   ,
	Pis decimal(10, 2)   ,
	Desconto decimal(10, 2)   ,
	Frete decimal(10, 2)   ,
	TipoDoFrete char(1) ,
	Observação varchar(80) ,
	DataEmissao datetime ,
	IdCliente int 
) 

GO