CREATE FUNCTION faturamentoNota (@NUMERO AS INT) RETURNS FLOAT

AS

BEGIN
	DECLARE @FATURAMENTO FLOAT
	SELECT @FATURAMENTO = SUM(QUANTIDADE * [PREÇO]) 
		FROM [ITENS NOTAS FISCAIS]
			WHERE NUMERO = @NUMERO

	RETURN @FATURAMENTO
END

SELECT NUMERO, [dbo].[faturamentoNota](NUMERO) AS FATURAMENTO FROM [NOTAS FISCAIS]

--RERTURNS é quando se define o tipo que a função vai retornar
--RETURN dentro do código eu defino uma variavel ou valor especifico para retornar

