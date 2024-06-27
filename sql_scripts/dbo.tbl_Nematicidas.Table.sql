USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Nematicidas]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Nematicidas](
	[costoProducto] [int] NULL,
	[cantidadProducto] [int] NULL,
	[cantidadAplicada] [int] NULL,
	[costoPorAplicacion] [int] NULL,
	[ciclos] [int] NULL,
	[duracionCiclo] [int] NULL,
	[duracionTotal] [int] NULL,
	[idTerreno] [varchar](10) NULL,
	[producto] [varchar](100) NOT NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Nematicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [ciclos], [duracionCiclo], [duracionTotal], [idTerreno], [producto], [idUsuario]) VALUES (6800, 500, 5, 50000, 2, 30, 2, N'T-001', N'Paeco', 2)
INSERT [dbo].[tbl_Nematicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [ciclos], [duracionCiclo], [duracionTotal], [idTerreno], [producto], [idUsuario]) VALUES (2, 2, 2, 2, 2, 2, 2, N'T-002', N'prueba', 2)
INSERT [dbo].[tbl_Nematicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [ciclos], [duracionCiclo], [duracionTotal], [idTerreno], [producto], [idUsuario]) VALUES (8000, 4, 2, 4000, 1, 1, 1, N'T-003', N'probando', 2)
INSERT [dbo].[tbl_Nematicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [ciclos], [duracionCiclo], [duracionTotal], [idTerreno], [producto], [idUsuario]) VALUES (7500, 5, 2, 1600, 1, 1, 1, N'T-005', N'probando', 2)
INSERT [dbo].[tbl_Nematicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [ciclos], [duracionCiclo], [duracionTotal], [idTerreno], [producto], [idUsuario]) VALUES (2500, 10, 5, 1250, 1, 1, 1, N'T-007', N'prueba', 2)
GO
ALTER TABLE [dbo].[tbl_Nematicidas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
