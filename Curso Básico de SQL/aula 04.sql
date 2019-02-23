/*
	Professor:	Daniel Silveira
	Módulo   :	Curso de SQL Server – Construindo um Banco de Dados  
	Aula 04  :  Adicionando arquivos ao Banco de Dados

*/

-- ADICIONAR UM NOVO ARQUIVO AO BANCO DE DADOS 
use master 
ALTER DATABASE VENDAS
ADD FILE (
	NAME = PEDIDOS,
	FILENAME = N'C:\SQL\PEDIDOS.MDF',
	SIZE = 5MB,
	FILEGROWTH = 10MB,
	MAXSIZE= UNLIMITED
);

--Adiciona o arquivo de LOG
ALTER DATABASE VENDAS
ADD LOG FILE 
(
	NAME = PEDIDOS_LOG,
	FILENAME = N'C:\SQL\PEDIDOS_LOG.LDF',
	SIZE = 5MB,
	FILEGROWTH = 10MB,
	MAXSIZE= UNLIMITED
)
