/*
	Professor:	Daniel Silveira
	Módulo   :	Curso de SQL Server - Modelagem de Dados 
	Aula 07  :  Insert simples e cosulta de dados

*/


--seleciona o banco Vendas
Use VENDAS;
GO

--Faz o insert na Tabela de Pedidos 
insert into Pedidos (Id,IdProduto, Quantidade,PrecoUnitário,Total,ValorIcms,Ipi,Cofins,Pis,Frete,TipoDoFrete,Observação,DataEmissao)
Values              (1 ,99       ,10        ,50           ,500  ,0        ,0  ,0     ,0  ,6.25 ,'F'        ,'Entregar até segunda-feira',getdate())
go 

--Cunsulta dos resgistro de uma tabela
Select * from Pedidos