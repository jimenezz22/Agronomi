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
INSERT [dbo].[tbl_CombateMalezas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (12000, 1, 8, 80000, N'T-001', N'Arrazador', 2)
INSERT [dbo].[tbl_CombateMalezas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (3000, 2, 1, 1100, N'T-002', N'pruebaCosto', 2)
INSERT [dbo].[tbl_CombateMalezas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (2000, 3, 2, 1200, N'T-003', N'pruebaCosto', 2)
INSERT [dbo].[tbl_CombateMalezas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (4600, 6, 4, 1350, N'T-004', N'pruebaCosto', 2)
INSERT [dbo].[tbl_CombateMalezas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (6000, 4, 2, 3000, N'T-005', N'probando', 2)
INSERT [dbo].[tbl_CombateMalezas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (10000, 10, 5, 5000, N'T-007', N'prueba', 2)
GO
ALTER TABLE [dbo].[tbl_CombateMalezas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
