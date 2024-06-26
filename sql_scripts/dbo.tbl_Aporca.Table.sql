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
INSERT [dbo].[tbl_Aporca] ([costoTotalAnimal], [costoPorAporcamiento], [costoPorFertilizacion], [resultadoAporca], [idTerreno], [idUsuario]) VALUES (2500, 1200, 2300, 1, N'T-001', 2)
INSERT [dbo].[tbl_Aporca] ([costoTotalAnimal], [costoPorAporcamiento], [costoPorFertilizacion], [resultadoAporca], [idTerreno], [idUsuario]) VALUES (2, 2, 2, 2, N'T-002', 2)
INSERT [dbo].[tbl_Aporca] ([costoTotalAnimal], [costoPorAporcamiento], [costoPorFertilizacion], [resultadoAporca], [idTerreno], [idUsuario]) VALUES (2, 2, 2, 2, N'T-001', 1002)
INSERT [dbo].[tbl_Aporca] ([costoTotalAnimal], [costoPorAporcamiento], [costoPorFertilizacion], [resultadoAporca], [idTerreno], [idUsuario]) VALUES (3500, 2000, 2500, 8000, N'T-005', 2)
INSERT [dbo].[tbl_Aporca] ([costoTotalAnimal], [costoPorAporcamiento], [costoPorFertilizacion], [resultadoAporca], [idTerreno], [idUsuario]) VALUES (1200, 1200, 1200, 3600, N'T-006', 2)
INSERT [dbo].[tbl_Aporca] ([costoTotalAnimal], [costoPorAporcamiento], [costoPorFertilizacion], [resultadoAporca], [idTerreno], [idUsuario]) VALUES (2500, 2500, 2500, 7500, N'T-007', 2)
GO
ALTER TABLE [dbo].[tbl_Aporca]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
