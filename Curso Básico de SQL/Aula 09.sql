/*
	Professor:	Daniel Silveira
	Módulo   :	Curso de SQL Server - Modelagem de Dados 
	Aula 09  : Alteração de Tabelas e Updates

*/

--seleciona os registros na tabela
Select * from Pedidos

--Incluindo uma coluna na tabela
alter table Pedidos add IdCliente int

--apagando uma coluna 
alter table Pedidos drop column IdCliente

--Incluindo uma coluna com valor default 
alter table Pedidos add IdCliente int Default(0) not null

--atualizando uma coluna (UPDATE)
update Pedidos set IdCliente=3 where Id=5