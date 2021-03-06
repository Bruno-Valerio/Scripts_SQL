USE [SUCOS_VENDAS]

CREATE TABLE [dbo].[TABELA DE VENDEDORES](
	[MATRICULA] [varchar](5) NOT NULL,
	[NOME] [varchar](100) NULL,
	[PERCENTUAL COMISS?O] [float] NULL,
	[DATA ADMISS?O] [date] NULL,
	[DE FERIAS] [bit] NULL,
	[BAIRRO] [varchar](50) NULL,
 CONSTRAINT [PK_VENDEDORES] PRIMARY KEY CLUSTERED 
(
	[MATRICULA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TABELA DE PRODUTOS](
	[CODIGO DO PRODUTO] [varchar](10) NOT NULL,
	[NOME DO PRODUTO] [varchar](50) NULL,
	[EMBALAGEM] [varchar](20) NULL,
	[TAMANHO] [varchar](10) NULL,
	[SABOR] [varchar](20) NULL,
	[PRE?O DE LISTA] [smallmoney] NOT NULL,
 CONSTRAINT [PK_TABELA DE PRODUTOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO DO PRODUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TABELA DE NUMERO](
	[NUMERO] [int] NULL,
	[STATUS] [varchar](200) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TABELA DE CLIENTES](
	[CPF] [varchar](11) NOT NULL,
	[NOME] [varchar](100) NULL,
	[ENDERECO 1] [varchar](150) NULL,
	[ENDERECO 2] [varchar](150) NULL,
	[BAIRRO] [varchar](50) NULL,
	[CIDADE] [varchar](50) NULL,
	[ESTADO] [varchar](2) NULL,
	[CEP] [varchar](8) NULL,
	[DATA DE NASCIMENTO] [date] NULL,
	[IDADE] [smallint] NULL,
	[SEXO] [varchar](1) NULL,
	[LIMITE DE CREDITO] [money] NULL,
	[VOLUME DE COMPRA] [float] NULL,
	[PRIMEIRA COMPRA] [bit] NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NOTAS FISCAIS](
	[CPF] [varchar](11) NOT NULL,
	[MATRICULA] [varchar](5) NOT NULL,
	[DATA] [date] NULL,
	[NUMERO] [int] NOT NULL,
	[IMPOSTO] [float] NOT NULL,
 CONSTRAINT [PK_NOTAS FISCAIS] PRIMARY KEY CLUSTERED 
(
	[NUMERO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[NOTAS FISCAIS]  WITH CHECK ADD  CONSTRAINT [FK_NOTAS FISCAIS_TABELA DE CLIENTES] FOREIGN KEY([CPF])
REFERENCES [dbo].[TABELA DE CLIENTES] ([CPF])
GO

ALTER TABLE [dbo].[NOTAS FISCAIS] CHECK CONSTRAINT [FK_NOTAS FISCAIS_TABELA DE CLIENTES]
GO

ALTER TABLE [dbo].[NOTAS FISCAIS]  WITH CHECK ADD  CONSTRAINT [FK_NOTAS FISCAIS_TABELA DE VENDEDORES] FOREIGN KEY([MATRICULA])
REFERENCES [dbo].[TABELA DE VENDEDORES] ([MATRICULA])
GO

ALTER TABLE [dbo].[NOTAS FISCAIS] CHECK CONSTRAINT [FK_NOTAS FISCAIS_TABELA DE VENDEDORES]
GO

CREATE TABLE [dbo].[ITENS NOTAS FISCAIS](
	[NUMERO] [int] NOT NULL,
	[CODIGO DO PRODUTO] [varchar](10) NOT NULL,
	[QUANTIDADE] [int] NOT NULL,
	[PRE?O] [float] NOT NULL,
 CONSTRAINT [PK_ITENS NOTAS FISCAIS] PRIMARY KEY CLUSTERED 
(
	[NUMERO] ASC,
	[CODIGO DO PRODUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ITENS NOTAS FISCAIS]  WITH CHECK ADD  CONSTRAINT [FK_ITENS NOTAS FISCAIS_NOTAS FISCAIS] FOREIGN KEY([NUMERO])
REFERENCES [dbo].[NOTAS FISCAIS] ([NUMERO])
GO

ALTER TABLE [dbo].[ITENS NOTAS FISCAIS] CHECK CONSTRAINT [FK_ITENS NOTAS FISCAIS_NOTAS FISCAIS]
GO

ALTER TABLE [dbo].[ITENS NOTAS FISCAIS]  WITH CHECK ADD  CONSTRAINT [FK_ITENS NOTAS FISCAIS_TABELA DE PRODUTOS] FOREIGN KEY([CODIGO DO PRODUTO])
REFERENCES [dbo].[TABELA DE PRODUTOS] ([CODIGO DO PRODUTO])
GO

ALTER TABLE [dbo].[ITENS NOTAS FISCAIS] CHECK CONSTRAINT [FK_ITENS NOTAS FISCAIS_TABELA DE PRODUTOS]
GO


