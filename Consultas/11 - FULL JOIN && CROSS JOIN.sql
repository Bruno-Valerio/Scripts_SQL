SELECT * FROM [TABELA DE VENDEDORES]

SELECT * FROM [TABELA DE CLIENTES]


SELECT V.BAIRRO, CL.BAIRRO 
	FROM [TABELA DE VENDEDORES] V
	INNER JOIN [TABELA DE CLIENTES] CL
	ON V.BAIRRO = CL.BAIRRO

SELECT V.BAIRRO, V.[NOME], CL.BAIRRO, CL.[NOME] 
	FROM[TABELA DE VENDEDORES] V
	LEFT JOIN [TABELA DE CLIENTES] CL
	ON V.BAIRRO = CL.BAIRRO

SELECT V.BAIRRO, V.[NOME], CL.BAIRRO, CL.[NOME] 
	FROM [TABELA DE VENDEDORES] V
	RIGHT JOIN [TABELA DE CLIENTES] CL
	ON V.BAIRRO = CL.BAIRRO

SELECT V.BAIRRO, V.[NOME], CL.BAIRRO, CL.[NOME] 
	FROM [TABELA DE VENDEDORES] V
	FULL JOIN [TABELA DE CLIENTES] CL
ON V.BAIRRO = CL.BAIRRO

SELECT V.BAIRRO, CL.BAIRRO 
	FROM [TABELA DE VENDEDORES] V
	CROSS JOIN [TABELA DE CLIENTES] CL