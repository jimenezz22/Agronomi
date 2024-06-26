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
INSERT [dbo].[tbl_Insecticidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario], [producto]) VALUES (31000, 1, 8, 80000, N'T-001', 2, N'Ejemplo')
INSERT [dbo].[tbl_Insecticidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario], [producto]) VALUES (2, 2, 2, 2, N'T-002', 2, N'prueba')
INSERT [dbo].[tbl_Insecticidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario], [producto]) VALUES (8000, 4, 2, 4000, N'T-003', 2, N'probando')
INSERT [dbo].[tbl_Insecticidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario], [producto]) VALUES (6500, 3, 1, 2500, N'T-005', 2, N'probando')
INSERT [dbo].[tbl_Insecticidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario], [producto]) VALUES (2500, 10, 5, 1250, N'T-007', 2, N'prueba')
GO
ALTER TABLE [dbo].[tbl_Insecticidas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
