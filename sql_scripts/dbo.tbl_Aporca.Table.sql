USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Aporca]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Aporca](
	[costoTotalAnimal] [int] NULL,
	[costoPorAporcamiento] [int] NULL,
	[costoPorFertilizacion] [int] NULL,
	[resultadoAporca] [float] NULL,
	[idTerreno] [varchar](10) NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Aporca]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
