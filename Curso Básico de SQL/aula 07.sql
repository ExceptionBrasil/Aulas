/*
	Professor:	Daniel Silveira
	M�dulo   :	Curso de SQL Server - Modelagem de Dados 
	Aula 07  :  Insert simples e cosulta de dados

*/


--seleciona o banco Vendas
Use VENDAS;
GO

--Faz o insert na Tabela de Pedidos 
insert into Pedidos (Id,IdProduto, Quantidade,PrecoUnit�rio,Total,ValorIcms,Ipi,Cofins,Pis,Frete,TipoDoFrete,Observa��o,DataEmissao)
Values              (1 ,99       ,10        ,50           ,500  ,0        ,0  ,0     ,0  ,6.25 ,'F'        ,'Entregar at� segunda-feira',getdate())
go 

--Cunsulta dos resgistro de uma tabela
Select * from Pedidos