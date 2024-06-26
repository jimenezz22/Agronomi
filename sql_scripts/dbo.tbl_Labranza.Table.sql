USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Labranza]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Labranza](
	[costoPorArado] [int] NULL,
	[costoPorEnmindas] [int] NULL,
	[costoPorTrazado] [int] NULL,
	[costoPorCamas] [int] NULL,
	[costoPorMurillo] [int] NULL,
	[costoPorRastra] [int] NULL,
	[resultadoLabranza] [float] NULL,
	[idTerreno] [varchar](10) NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Labranza] ([costoPorArado], [costoPorEnmindas], [costoPorTrazado], [costoPorCamas], [costoPorMurillo], [costoPorRastra], [resultadoLabranza], [idTerreno], [idUsuario]) VALUES (20000, 15000, 15000, 25000, 45000, 40000, 1, N'T-001', 2)
INSERT [dbo].[tbl_Labranza] ([costoPorArado], [costoPorEnmindas], [costoPorTrazado], [costoPorCamas], [costoPorMurillo], [costoPorRastra], [resultadoLabranza], [idTerreno], [idUsuario]) VALUES (500, 500, 500, 500, 500, 500, 1, N'T-002', 2)
INSERT [dbo].[tbl_Labranza] ([costoPorArado], [costoPorEnmindas], [costoPorTrazado], [costoPorCamas], [costoPorMurillo], [costoPorRastra], [resultadoLabranza], [idTerreno], [idUsuario]) VALUES (600, 600, 600, 600, 600, 600, 1, N'T-003', 2)
INSERT [dbo].[tbl_Labranza] ([costoPorArado], [costoPorEnmindas], [costoPorTrazado], [costoPorCamas], [costoPorMurillo], [costoPorRastra], [resultadoLabranza], [idTerreno], [idUsuario]) VALUES (2, 2, 2, 2, 2, 2, 1, N'T-002', 1002)
INSERT [dbo].[tbl_Labranza] ([costoPorArado], [costoPorEnmindas], [costoPorTrazado], [costoPorCamas], [costoPorMurillo], [costoPorRastra], [resultadoLabranza], [idTerreno], [idUsuario]) VALUES (2, 2, 2, 2, 2, 2, 1, N'T-001', 1002)
INSERT [dbo].[tbl_Labranza] ([costoPorArado], [costoPorEnmindas], [costoPorTrazado], [costoPorCamas], [costoPorMurillo], [costoPorRastra], [resultadoLabranza], [idTerreno], [idUsuario]) VALUES (500, 500, 500, 500, 500, 500, 3000, N'T-005', 2)
INSERT [dbo].[tbl_Labranza] ([costoPorArado], [costoPorEnmindas], [costoPorTrazado], [costoPorCamas], [costoPorMurillo], [costoPorRastra], [resultadoLabranza], [idTerreno], [idUsuario]) VALUES (1200, 1200, 1200, 1200, 1200, 1200, 7200, N'T-006', 2)
INSERT [dbo].[tbl_Labranza] ([costoPorArado], [costoPorEnmindas], [costoPorTrazado], [costoPorCamas], [costoPorMurillo], [costoPorRastra], [resultadoLabranza], [idTerreno], [idUsuario]) VALUES (2500, 2500, 2500, 2500, 2500, 2500, 15000, N'T-007', 2)
GO
ALTER TABLE [dbo].[tbl_Labranza]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
