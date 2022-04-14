USE [Pedidos]
GO

/****** Object:  Table [dbo].[Usuario]    Script Date: 13/04/2022 20:31:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentoIdentidad] [varchar](60) NULL,
	[Nombres] [varchar](60) NULL,
	[Telefono] [varchar](60) NULL,
	[Correo] [varchar](60) NULL,
	[Direccion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


