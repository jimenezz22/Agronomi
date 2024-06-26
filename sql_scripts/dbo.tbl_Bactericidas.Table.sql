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
INSERT [dbo].[tbl_Bactericidas] ([NombreProducto], [costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario]) VALUES (N'COBRETHANE', 9000, 500, 2, 20000, N'T-001', 2)
INSERT [dbo].[tbl_Bactericidas] ([NombreProducto], [costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario]) VALUES (N'prueba', 2, 2, 2, 2, N'T-002', 2)
INSERT [dbo].[tbl_Bactericidas] ([NombreProducto], [costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario]) VALUES (N'probando', 6000, 4000, 2000, 3000, N'T-003', 2)
INSERT [dbo].[tbl_Bactericidas] ([NombreProducto], [costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario]) VALUES (N'probandoo', 8000, 10, 4, 3200, N'T-005', 2)
INSERT [dbo].[tbl_Bactericidas] ([NombreProducto], [costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [idUsuario]) VALUES (N'prueba', 2500, 10, 5, 1250, N'T-007', 2)
GO
ALTER TABLE [dbo].[tbl_Bactericidas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
