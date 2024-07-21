USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Bactericidas]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bactericidas](
	[NombreProducto] [varchar](50) NOT NULL,
	[costoProducto] [int] NOT NULL,
	[cantidadProducto] [int] NOT NULL,
	[cantidadAplicada] [int] NOT NULL,
	[costoPorAplicacion] [int] NOT NULL,
	[idTerreno] [varchar](10) NOT NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Bactericidas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
