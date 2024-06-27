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
INSERT [dbo].[tbl_TratamientoHierbas] ([idTerreno], [actividad], [idUsuario], [costoHora], [horasAsignadas], [costoActividad]) VALUES (N'T-001', N'Chapea', 2, 2, 2, 2)
INSERT [dbo].[tbl_TratamientoHierbas] ([idTerreno], [actividad], [idUsuario], [costoHora], [horasAsignadas], [costoActividad]) VALUES (N'T-002', N'Mecanizacion', 2, 2, 2, 2)
INSERT [dbo].[tbl_TratamientoHierbas] ([idTerreno], [actividad], [idUsuario], [costoHora], [horasAsignadas], [costoActividad]) VALUES (N'T-003', N'prueba', 2, 2, 2, 2)
INSERT [dbo].[tbl_TratamientoHierbas] ([idTerreno], [actividad], [idUsuario], [costoHora], [horasAsignadas], [costoActividad]) VALUES (N'T-001', N'prueba', 1002, 2, 2, 2)
INSERT [dbo].[tbl_TratamientoHierbas] ([idTerreno], [actividad], [idUsuario], [costoHora], [horasAsignadas], [costoActividad]) VALUES (N'T-004', N'pruebaCosto', 2, 2, 2, 2)
INSERT [dbo].[tbl_TratamientoHierbas] ([idTerreno], [actividad], [idUsuario], [costoHora], [horasAsignadas], [costoActividad]) VALUES (N'T-005', N'probando', 2, 1200, 5, 6000)
INSERT [dbo].[tbl_TratamientoHierbas] ([idTerreno], [actividad], [idUsuario], [costoHora], [horasAsignadas], [costoActividad]) VALUES (N'T-006', N'pruebaNestor', 2, 1200, 5, 6000)
INSERT [dbo].[tbl_TratamientoHierbas] ([idTerreno], [actividad], [idUsuario], [costoHora], [horasAsignadas], [costoActividad]) VALUES (N'T-007', N'mecanizacion', 2, 1200, 5, 6000)
GO
ALTER TABLE [dbo].[tbl_TratamientoHierbas]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
