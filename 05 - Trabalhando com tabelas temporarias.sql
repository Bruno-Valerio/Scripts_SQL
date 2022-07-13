/*
# = Tabelas Temporárias Locais são criadas com o prefixo "#" e possuem visibilidade restrita para a conexão responsável por sua criação, outras conexões não "enxergam" a tabela.

## = Tabelas Temporárias Globais são criadas com o prefixo "##" e são visíveis por todas as conexões
*/

CREATE TABLE #TABELA01 (ID VARCHAR(10) NULL, NOME VARCHAR(200) NULL)

INSERT INTO #TABELA01 (ID, NOME) VALUES ('1','JOÃO')

SELECT * FROM #TABELA01

-------------------------------------------------------------------------------

CREATE TABLE ##TABELA02 (ID VARCHAR(10) NULL, NOME VARCHAR(200) NULL)

INSERT INTO ##TABELA02 (ID, NOME) VALUES ('1','JOÃO')
INSERT INTO ##TABELA02 (ID, NOME) VALUES ('2','PEDRO')

SELECT * FROM ##TABELA02