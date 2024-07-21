USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_SeleccionTerreno]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SeleccionTerreno](
	[idTerreno] [varchar](10) NOT NULL,
	[tamanioTerreno] [float] NOT NULL,
	[areaCultivo] [float] NOT NULL,
	[analisisTerreno] [varchar](100) NULL,
	[costoOportunidad] [int] NULL,
	[analisisPatologico] [varchar](50) NULL,
	[ubicacionTerrno] [varchar](100) NOT NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_SeleccionTerreno]  WITH CHECK ADD  CONSTRAINT [FK_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tbl_SeleccionTerreno] CHECK CONSTRAINT [FK_Usuario]
GO
