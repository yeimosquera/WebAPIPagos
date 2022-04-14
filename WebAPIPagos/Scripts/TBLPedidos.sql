USE [Pedidos]
GO

/****** Object:  Table [dbo].[Pedidos]    Script Date: 13/04/2022 20:30:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pedidos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[IdUsuario] [int] NULL,
	[Catidad] [int] NULL,
	[Iva] [decimal](18, 0) NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
	[Pago] [bit] NULL,
	[Enviado] [bit] NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


