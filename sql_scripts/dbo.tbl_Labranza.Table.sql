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
ALTER TABLE [dbo].[tbl_Labranza]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
