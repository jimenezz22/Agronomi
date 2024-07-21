USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Insecticidas]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Insecticidas](
	[costoProducto] [float] NOT NULL,
	[cantidadProducto] [float] NOT NULL,
	[cantidadAplicada] [float] NOT NULL,
	[costoPorAplicacion] [float] NOT NULL,
	[idTerreno] [varchar](10) NULL,
	[idUsuario] [int] NULL,
	[producto] [varchar](100) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Insecticidas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
