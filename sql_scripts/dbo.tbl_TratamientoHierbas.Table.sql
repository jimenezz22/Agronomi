USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_TratamientoHierbas]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TratamientoHierbas](
	[idTerreno] [varchar](10) NULL,
	[actividad] [varchar](100) NULL,
	[idUsuario] [int] NULL,
	[costoHora] [int] NULL,
	[horasAsignadas] [int] NULL,
	[costoActividad] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_TratamientoHierbas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
