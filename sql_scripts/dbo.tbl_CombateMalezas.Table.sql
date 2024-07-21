USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_CombateMalezas]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CombateMalezas](
	[costoProducto] [int] NULL,
	[cantidadProducto] [int] NULL,
	[cantidadAplicada] [int] NULL,
	[costoPorAplicacion] [int] NULL,
	[idTerreno] [varchar](10) NULL,
	[producto] [varchar](100) NOT NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_CombateMalezas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
