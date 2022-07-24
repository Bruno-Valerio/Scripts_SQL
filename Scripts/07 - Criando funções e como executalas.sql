CREATE FUNCTION faturamentoNota (@NUMERO AS INT) RETURNS FLOAT

AS

BEGIN
	DECLARE @FATURAMENTO FLOAT
	SELECT @FATURAMENTO = SUM(QUANTIDADE * [PRE�O]) 
		FROM [ITENS NOTAS FISCAIS]
			WHERE NUMERO = @NUMERO

	RETURN @FATURAMENTO
END

SELECT NUMERO, [dbo].[faturamentoNota](NUMERO) AS FATURAMENTO FROM [NOTAS FISCAIS]

--RERTURNS � quando se define o tipo que a fun��o vai retornar
--RETURN dentro do c�digo eu defino uma variavel ou valor especifico para retornar

