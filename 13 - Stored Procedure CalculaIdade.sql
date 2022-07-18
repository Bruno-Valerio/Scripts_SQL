CREATE PROCEDURE CalculaIdade
AS
BEGIN
	UPDATE [TABELA DE CLIENTES] SET IDADE = DATEDIFF(YEAR, [DATA DE NASCIMENTO], GETDATE())
END

INSERT INTO [TABELA DE CLIENTES] (CPF, NOME, [ENDERECO 1], BAIRRO, CIDADE, ESTADO, CEP, [DATA DE NASCIMENTO], SEXO, [LIMITE DE CREDITO], [VOLUME DE COMPRA], [PRIMEIRA COMPRA])
VALUES
('123123123','JO�O MACHADO','RUA PROJETADA A','MADUREIRA','Rio De Janeiro','RJ','20000','20000306','M', 120000, 120000, 12000)

SELECT * FROM [TABELA DE CLIENTES] WHERE CPF = '123123123'
EXEC CalculaIdade