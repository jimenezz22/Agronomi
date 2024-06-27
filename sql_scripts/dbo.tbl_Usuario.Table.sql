USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Usuario]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[primerApellido] [varchar](100) NOT NULL,
	[segundoApellido] [varchar](100) NOT NULL,
	[correo] [varchar](200) NOT NULL,
	[clave] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Usuario] ON 

INSERT [dbo].[tbl_Usuario] ([idUsuario], [nombre], [primerApellido], [segundoApellido], [correo], [clave]) VALUES (2, N'Luis', N'Jimenez', N'Bogantes', N'ljimenezbogantes@gmail.com', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[tbl_Usuario] ([idUsuario], [nombre], [primerApellido], [segundoApellido], [correo], [clave]) VALUES (1002, N'Monica', N'Parada', N'Escalante', N'moni@estudiantec.cr', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
SET IDENTITY_INSERT [dbo].[tbl_Usuario] OFF
GO
