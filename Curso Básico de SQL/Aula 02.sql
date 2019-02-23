/*
	Professor:	Daniel Silveira
	M�dulo   :	Curso de SQL Server � Construindo um Banco de Dados  
	Aula 02  :  Adicionando o Arquivo de LOG

*/


--Seleciona o banco master
use master
go


--Cria o banco de dados
CREATE DATABASE VENDAS
ON
(
	NAME = VENDAS, --NOME L�GICO
	FILENAME = N'C:\SQL\VENDAS.MDF', --NOME F�SICO
	SIZE = 10MB, -- KB, TB,GB TAMNHO INICIAL
	MAXSIZE = 100MB, -- TAMANHO M�XIMO
	FILEGROWTH = 10MB -- CRESCIMENTO DO BANCO DE DADOS
)
LOG ON --Adiciona os arquivos de LOG
(	NAME = VENDAS_LOG,
	FILENAME = N'C:\SQL\VENDAS_LOG.LDF',
	SIZE = 10MB,
	MAXSIZE = 25MB,
	FILEGROWTH = 5MB
	)