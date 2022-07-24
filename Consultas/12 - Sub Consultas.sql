SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]

SELECT NOME, BAIRRO 
	FROM [TABELA DE CLIENTES]
		WHERE BAIRRO IN (SELECT BAIRRO FROM [TABELA DE VENDEDORES])

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS PRE�O
	FROM [TABELA DE PRODUTOS] 
	GROUP BY EMBALAGEM

SELECT NOVA_CONSULTA.EMBALAGEM, NOVA_CONSULTA.MAX_PRECO
	FROM (SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) AS MAX_PRECO FROM [TABELA DE PRODUTOS] 
	GROUP BY EMBALAGEM) NOVA_CONSULTA
		WHERE NOVA_CONSULTA.MAX_PRECO <= 5