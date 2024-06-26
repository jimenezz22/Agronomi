USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Province]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Province](
	[idProvince] [int] NOT NULL,
	[provinceName] [varchar](30) NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[idProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Province] ([idProvince], [provinceName]) VALUES (1, N'San José')
INSERT [dbo].[tbl_Province] ([idProvince], [provinceName]) VALUES (2, N'Alajuela')
INSERT [dbo].[tbl_Province] ([idProvince], [provinceName]) VALUES (3, N'Cartago')
INSERT [dbo].[tbl_Province] ([idProvince], [provinceName]) VALUES (4, N'Heredia')
INSERT [dbo].[tbl_Province] ([idProvince], [provinceName]) VALUES (5, N'Guanacaste')
INSERT [dbo].[tbl_Province] ([idProvince], [provinceName]) VALUES (6, N'Puntarenas')
INSERT [dbo].[tbl_Province] ([idProvince], [provinceName]) VALUES (7, N'Limón')
INSERT [dbo].[tbl_Province] ([idProvince], [provinceName]) VALUES (8, N'Gran Área Metropolitana')
INSERT [dbo].[tbl_Province] ([idProvince], [provinceName]) VALUES (9, N'Todo el país')
GO
