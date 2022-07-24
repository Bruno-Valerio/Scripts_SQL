/*
# = Tabelas Tempor�rias Locais s�o criadas com o prefixo "#" e possuem visibilidade restrita para a conex�o respons�vel por sua cria��o, outras conex�es n�o "enxergam" a tabela.

## = Tabelas Tempor�rias Globais s�o criadas com o prefixo "##" e s�o vis�veis por todas as conex�es
*/

CREATE TABLE #TABELA01 (ID VARCHAR(10) NULL, NOME VARCHAR(200) NULL)

INSERT INTO #TABELA01 (ID, NOME) VALUES ('1','JO�O')

SELECT * FROM #TABELA01

-------------------------------------------------------------------------------

CREATE TABLE ##TABELA02 (ID VARCHAR(10) NULL, NOME VARCHAR(200) NULL)

INSERT INTO ##TABELA02 (ID, NOME) VALUES ('1','JO�O')
INSERT INTO ##TABELA02 (ID, NOME) VALUES ('2','PEDRO')

SELECT * FROM ##TABELA02