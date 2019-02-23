/*
	Professor:	Daniel Silveira
	Módulo   :	Curso de SQL Server – Construindo um Banco de Dados  
	Aula 05  :  Trabalhando com Filegroups

*/



--Seleciona o banco de dados master
use master;
go


--Cria o Filegroup Secundario para o banco Vendas
ALTER DATABASE VENDAS
ADD FILEGROUP SECUNDARIO


--ADICIONANDO UM ARQUIVO AO FILEGROUP 
ALTER DATABASE VENDAS
ADD FILE 
(
	NAME = VENDAS_NOTASFISCAIS,
	FILENAME = N'C:\SQL\VENDAS_NOTASFISCAIS.MDF',
	SIZE= 50MB,	
	FILEGROWTH = 10MB,
	MAXSIZE = UNLIMITED

) TO FILEGROUP SECUNDARIO
