
/*Say Massiel Meran Mejia   ||   16-SIIT-1-076   ||   0541
  Frandy G. Reyes           ||   16-SIIT-1-032   ||   0541
  Bismar De Leon            ||   16-SIIT-1-030   ||   0541*/

USE [master]
GO
/****** Object:  Database [BDFinal2]    Script Date: 11/04/2018 13:11:49 ******/
CREATE DATABASE [BDFinal2]

USE [BDFinal2]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 11/04/2018 13:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacenes](
	[Codigo_Almacen] [int] NOT NULL,
	[Lugar] [nvarchar](50) NULL,
	[Capacidad] [int] NULL,
 CONSTRAINT [PK_Almacenes] PRIMARY KEY CLUSTERED 
(
	[Codigo_Almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cajas]    Script Date: 11/04/2018 13:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cajas](
	[Numero_Referencia] [char](10) NOT NULL,
	[Contenido] [nvarchar](50) NULL,
	[Valor] [int] NULL,
	[Codigo_Almacen] [int] NULL,
 CONSTRAINT [PK_Cajas] PRIMARY KEY CLUSTERED 
(
	[Numero_Referencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (1, N'Nacional', 9000)
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (2, N'La Sirena', 7000)
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (3, N'Bravo', 6300)
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (4, N'Plaza Lama', 2000)
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (5, N'Blue Mall', 1000)
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (6, N'Mega Centro', 3000)
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (7, N'Plaza Central', 7000)
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (8, N'Galeria 360', 4200)
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (9, N'Sambil', 5000)
INSERT [dbo].[Almacenes] ([Codigo_Almacen], [Lugar], [Capacidad]) VALUES (10, N'Agora Mall', 1600)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'1         ', N'Anillos', 420, 10)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'10        ', N'Gafas de Sol', 450, 1)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'2         ', N'Boina', 800, 9)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'3         ', N'Cartera', 2000, 8)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'4         ', N'Cinta de pelo', 150, 7)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'5         ', N'Monedero', 1300, 6)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'6         ', N'Sombrero de pajas', 900, 5)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'7         ', N'Gorra', 700, 4)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'8         ', N'Pendientes', 650, 3)
INSERT [dbo].[Cajas] ([Numero_Referencia], [Contenido], [Valor], [Codigo_Almacen]) VALUES (N'9         ', N'Collar', 1200, 2)
ALTER TABLE [dbo].[Cajas]  WITH CHECK ADD  CONSTRAINT [FK_Cajas_Almacenes] FOREIGN KEY([Codigo_Almacen])
REFERENCES [dbo].[Almacenes] ([Codigo_Almacen])
GO
ALTER TABLE [dbo].[Cajas] CHECK CONSTRAINT [FK_Cajas_Almacenes]
GO
USE [master]
GO
ALTER DATABASE [BDFinal2] SET  READ_WRITE 
GO
