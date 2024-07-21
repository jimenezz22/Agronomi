USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Cosecha]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cosecha](
	[costoPorCosecha] [int] NULL,
	[costoPorLavado] [float] NOT NULL,
	[costoPorSaco] [float] NOT NULL,
	[costoPorTransporteCarga] [float] NOT NULL,
	[idTerreno] [varchar](10) NULL,
	[idUsuario] [int] NULL,
	[costoDelQuintal] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Cosecha]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
