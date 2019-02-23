/*
	Professor:	Daniel Silveira
	Módulo   :	Curso de SQL Server – Construindo um Banco de Dados  
	Aula 01  :  Criando meu Primeiro Banco de Dados

*/


-----
--Cria um banco de dados 
-----

use master
go

CREATE DATABASE VENDAS
ON
(
	NAME = VENDAS, --NOME LÓGICO
	FILENAME = N'C:\SQL\VENDAS.MDF', --NOME FÍSICO
	SIZE = 10MB, -- KB, TB,GB TAMNHO INICIAL
	MAXSIZE = 100MB, -- TAMANHO MÁXIMO
	FILEGROWTH = 10MB -- CRESCIMENTO DO BANCO DE DADOS
)