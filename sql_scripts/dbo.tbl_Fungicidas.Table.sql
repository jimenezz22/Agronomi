USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Fungicidas]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Fungicidas](
	[costoProducto] [int] NULL,
	[cantidadProducto] [int] NULL,
	[cantidadAplicada] [int] NULL,
	[costoPorAplicacion] [int] NULL,
	[idTerreno] [varchar](10) NULL,
	[producto] [varchar](100) NOT NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Fungicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (31000, 1, 8, 80000, N'T-001', N'Cycosin', 2)
INSERT [dbo].[tbl_Fungicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (2, 2, 2, 2, N'T-002', N'prueba', 2)
INSERT [dbo].[tbl_Fungicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (6000, 4, 2, 3000, N'T-003', N'probando', 2)
INSERT [dbo].[tbl_Fungicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (6000, 3, 2, 4000, N'T-004', N'pronadooo', 2)
INSERT [dbo].[tbl_Fungicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (9500, 4, 2, 5000, N'T-005', N'probandoo', 2)
INSERT [dbo].[tbl_Fungicidas] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (2500, 10, 5, 1250, N'T-007', N'prueba', 2)
GO
ALTER TABLE [dbo].[tbl_Fungicidas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
