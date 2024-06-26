USE [master]
GO
/****** Object:  Database [BD_Zoologico]    Script Date: 20/8/2023 23:02:36 ******/
CREATE DATABASE [BD_Zoologico]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_Zoologico', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BD_Zoologico.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_Zoologico_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BD_Zoologico_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BD_Zoologico] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_Zoologico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_Zoologico] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_Zoologico] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_Zoologico] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_Zoologico] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_Zoologico] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_Zoologico] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BD_Zoologico] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_Zoologico] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_Zoologico] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_Zoologico] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_Zoologico] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_Zoologico] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_Zoologico] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_Zoologico] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_Zoologico] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_Zoologico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_Zoologico] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_Zoologico] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_Zoologico] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_Zoologico] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_Zoologico] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_Zoologico] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_Zoologico] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD_Zoologico] SET  MULTI_USER 
GO
ALTER DATABASE [BD_Zoologico] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_Zoologico] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_Zoologico] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_Zoologico] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_Zoologico] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_Zoologico] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_Zoologico', N'ON'
GO
ALTER DATABASE [BD_Zoologico] SET QUERY_STORE = OFF
GO
USE [BD_Zoologico]
GO
/****** Object:  Table [dbo].[actividad]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actividad](
	[id_actividad] [int] IDENTITY(1,1) NOT NULL,
	[id_actividad_informacion] [int] NOT NULL,
	[nombre] [varchar](250) NOT NULL,
	[tiempo] [varchar](100) NOT NULL,
	[imagen] [varchar](100) NOT NULL,
	[estado] [bit] NOT NULL,
	[fechaReg] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_actividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[actividadCabecera]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actividadCabecera](
	[id_actividad_informacion] [int] IDENTITY(1,1) NOT NULL,
	[id_horario] [int] NOT NULL,
	[cantidadPersonas] [int] NOT NULL,
	[cantidadGuias] [int] NOT NULL,
	[precio] [decimal](8, 2) NOT NULL,
	[descripcion] [varchar](500) NOT NULL,
	[estado] [bit] NOT NULL,
	[fechaReg] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_actividad_informacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animales]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animales](
	[id_animales] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[especie] [varchar](100) NOT NULL,
	[edad] [int] NOT NULL,
	[genero] [varchar](100) NOT NULL,
	[origen] [varchar](200) NOT NULL,
	[habitat] [varchar](200) NOT NULL,
	[observaciones] [varchar](200) NOT NULL,
	[imagen] [varchar](100) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_Animales] PRIMARY KEY CLUSTERED 
(
	[id_animales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[horario]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horario](
	[id_horario] [int] IDENTITY(1,1) NOT NULL,
	[hora] [varchar](100) NOT NULL,
	[estado] [bit] NOT NULL,
	[fechaReg] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personalizado]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personalizado](
	[id_personalizado] [int] IDENTITY(1,1) NOT NULL,
	[id_actividad_informacion] [int] NOT NULL,
	[nombreUsuario] [varchar](250) NOT NULL,
	[telefono] [varchar](100) NOT NULL,
	[fecha] [date] NOT NULL,
	[estado] [bit] NOT NULL,
	[fechaReg] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_personalizado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solicitudes]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitudes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Cedula] [varchar](10) NOT NULL,
	[Edad] [int] NOT NULL,
	[Telefono] [varchar](10) NOT NULL,
	[Experiencia] [varchar](200) NOT NULL,
	[Motivacion] [varchar](200) NOT NULL,
	[Estado] [bit] NOT NULL,
	[FechaReg] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](10) NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[apellido] [varchar](150) NOT NULL,
	[password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voluntarios]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voluntarios](
	[Id_Voluntarios] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Cedula] [varchar](10) NULL,
	[Edad] [int] NULL,
	[Telefono] [varchar](10) NULL,
	[Experiencia] [varchar](200) NULL,
	[Motivacion] [varchar](200) NULL,
	[Imagen] [varchar](100) NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Voluntarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[actividad] ON 

INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (1, 1, N'Visita guiada por el zoológico', N'1 Hora', N'imagen1.jpg', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (2, 2, N'Alimentación de los animales', N'1 Hora 30 minutos', N'imagen2.jpg', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (3, 3, N'Exhibición de aves rapaces', N'1 Hora', N'imagen3.jpg', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (4, 4, N'Sesión de fotos con animales', N'30 Minutos', N'imagen4.jpg', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (5, 5, N'Charlas educativas sobre conservación', N'45 Minutos', N'imagen5.jpg', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (6, 6, N'Safari en jeep por la reserva', N'2 Horas', N'imagen6.jpg', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (7, 7, N'Exhibición de delfines', N'1 Hora', N'imagen7.jpg', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (8, 8, N'Paseo en bicicleta por el parque', N'1 Hora 30 minutos', N'imagen8.jpg', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (9, 9, N'Encuentro con los lemures', N'45 Minutos', N'imagen9.jpg', 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (10, 10, N'Cena temática africana', N'2 Horas', N'imagen10.jpg', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (15, 61, N'Experiencia con águilas', N'1 Hora', N'imagen3.jpg', 1, CAST(N'2023-07-18' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (16, 68, N'eduardo', N'30 Minutos', N'mono-capuchino.jpg', 0, CAST(N'2023-08-09' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (17, 69, N'eduardo', N'1 Hora', N'imagen5.jpg', 0, CAST(N'2023-08-11' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (18, 72, N'Paseo', N'30 Minutos', N'imagen-2.jpg', 0, CAST(N'2023-08-18' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (19, 73, N'Paseo2', N'30 Minutos', N'img1.jpg', 0, CAST(N'2023-08-18' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (20, 74, N'Visita a jirafas', N'30 Minutos', N'imagen2.jpg', 0, CAST(N'2023-08-18' AS Date))
INSERT [dbo].[actividad] ([id_actividad], [id_actividad_informacion], [nombre], [tiempo], [imagen], [estado], [fechaReg]) VALUES (21, 76, N'Visita a jirafas', N'30 Minutos', N'imagen2.jpg', 0, CAST(N'2023-08-19' AS Date))
SET IDENTITY_INSERT [dbo].[actividad] OFF
GO
SET IDENTITY_INSERT [dbo].[actividadCabecera] ON 

INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (1, 1, 20, 2, CAST(10.00 AS Decimal(8, 2)), N'Embárcate en una visita guiada y descubre la vida salvaje. Acompañado por expertos guías, aprende sobre animales y conservación. Observa de cerca leones, jirafas, y más. Únete y disfruta de la experiencia.', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (2, 2, 10, 1, CAST(5.00 AS Decimal(8, 2)), N'Participa en la hora de la comida de nuestros animales y observa cómo se alimentan.', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (3, 3, 30, 3, CAST(8.00 AS Decimal(8, 2)), N'Disfruta de un emocionante espectáculo con nuestras aves rapaces y admira su destreza en vuelo.', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (4, 3, 5, 1, CAST(15.00 AS Decimal(8, 2)), N'Inmortaliza momentos mágicos con nuestros adorables animales en una sesión de fotos divertida.', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (5, 8, 7, 3, CAST(105.00 AS Decimal(8, 2)), N'Tour por el acuario', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (6, 6, 8, 1, CAST(20.00 AS Decimal(8, 2)), N'Embárcate en un emocionante safari en jeep y descubre la belleza de nuestra reserva natural.', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (7, 7, 40, 4, CAST(12.00 AS Decimal(8, 2)), N'Asiste a la impresionante exhibición de delfines y disfruta de sus increíbles acrobacias y habilidades acuáticas.', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (8, 8, 12, 2, CAST(8.00 AS Decimal(8, 2)), N'Recorre nuestro extenso parque en bicicleta y disfruta de la naturaleza mientras haces ejercicio.', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (9, 5, 6, 1, CAST(15.00 AS Decimal(8, 2)), N'Vive una experiencia única al interactuar con nuestros simpáticos lemures y conocer más sobre su comportamiento.', 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (10, 3, 21, 4, CAST(35.00 AS Decimal(8, 2)), N'Disfruta de una deliciosa cena con temática africana y sumérgete en la cultura de este fascinante continente.', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (11, 2, 2, 1, CAST(50.00 AS Decimal(8, 2)), N'Visita al hábitat de los leones', 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (12, 6, 4, 2, CAST(80.00 AS Decimal(8, 2)), N'Recorrido por la exhibición de aves', 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (13, 8, 6, 3, CAST(25.00 AS Decimal(8, 2)), N'Interacción con los monos', 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (14, 7, 3, 1, CAST(45.00 AS Decimal(8, 2)), N'Visita a la exhibición de reptiles', 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (15, 7, 7, 4, CAST(105.00 AS Decimal(8, 2)), N'Tour por el acuario', 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (60, 6, 3, 1, CAST(45.00 AS Decimal(8, 2)), N'Quiero una experiencia completa con cocodrillos', 1, CAST(N'2023-07-18' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (61, 3, 10, 3, CAST(20.00 AS Decimal(8, 2)), N'Te invitamos a vivir una experiencia única, podrás acercarte a estas increíbles aves y descubrir su grandeza de cerca.', 1, CAST(N'2023-07-18' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (68, 2, 2, 1, CAST(121.00 AS Decimal(8, 2)), N'fdsfs', 0, CAST(N'2023-08-09' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (69, 3, 2, 2, CAST(123.00 AS Decimal(8, 2)), N'eduardo', 0, CAST(N'2023-08-11' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (70, 4, 2, 1, CAST(30.00 AS Decimal(8, 2)), N'Cena', 0, CAST(N'2023-08-17' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (71, 4, 5, 2, CAST(75.00 AS Decimal(8, 2)), N'Ninguna por ahora', 1, CAST(N'2023-08-18' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (72, 1, 15, 3, CAST(45.00 AS Decimal(8, 2)), N'Paseo en el que podran observar aves. ', 0, CAST(N'2023-08-18' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (73, 2, 3, 1, CAST(20.00 AS Decimal(8, 2)), N'sin descrip', 0, CAST(N'2023-08-18' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (74, 3, 15, 2, CAST(45.00 AS Decimal(8, 2)), N'Recorrido en el que podras dar de comer y tomar fotos a nuestras lindas jirafas', 0, CAST(N'2023-08-18' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (75, 5, 15, 2, CAST(225.00 AS Decimal(8, 2)), N'Almuerzo', 0, CAST(N'2023-08-19' AS Date))
INSERT [dbo].[actividadCabecera] ([id_actividad_informacion], [id_horario], [cantidadPersonas], [cantidadGuias], [precio], [descripcion], [estado], [fechaReg]) VALUES (76, 5, 10, 1, CAST(100.00 AS Decimal(8, 2)), N'Visita', 0, CAST(N'2023-08-19' AS Date))
SET IDENTITY_INSERT [dbo].[actividadCabecera] OFF
GO
SET IDENTITY_INSERT [dbo].[Animales] ON 

INSERT [dbo].[Animales] ([id_animales], [nombre], [especie], [edad], [genero], [origen], [habitat], [observaciones], [imagen], [estado]) VALUES (20, N'Leo', N'León Africano', 5, N'Masculino', N'África', N'Sabana', N'Leo es un león majestuoso que disfruta tomar el sol por las mañanas.', N'leon.jpg', 1)
INSERT [dbo].[Animales] ([id_animales], [nombre], [especie], [edad], [genero], [origen], [habitat], [observaciones], [imagen], [estado]) VALUES (21, N'fghf', N'sdvs', 12, N'Macho', N'sdfs', N'sdfs', N'sdfs', N'oso-polar.jpg', 0)
INSERT [dbo].[Animales] ([id_animales], [nombre], [especie], [edad], [genero], [origen], [habitat], [observaciones], [imagen], [estado]) VALUES (22, N'edison', N'ffdsaf', 12, N'Macho', N'africa', N'sdfsdf', N'sdfsdf', N'panda-gigante.jpg', 0)
INSERT [dbo].[Animales] ([id_animales], [nombre], [especie], [edad], [genero], [origen], [habitat], [observaciones], [imagen], [estado]) VALUES (23, N'oso ', N'string', 0, N'string', N'string', N'string', N'string', N'panda-gigante.jpg', 0)
INSERT [dbo].[Animales] ([id_animales], [nombre], [especie], [edad], [genero], [origen], [habitat], [observaciones], [imagen], [estado]) VALUES (24, N'edison', N'fsdf', 22, N'Macho', N'sdfsd', N'sfdsdf', N'sdfsdf', N'imagen2.jpg', 0)
INSERT [dbo].[Animales] ([id_animales], [nombre], [especie], [edad], [genero], [origen], [habitat], [observaciones], [imagen], [estado]) VALUES (25, N'Elefante Africano', N'Loxodonta africana', 10, N'Macho', N'Africa', N'Terrestre', N'Ninguna', N'elefante-africano.jpg', 0)
INSERT [dbo].[Animales] ([id_animales], [nombre], [especie], [edad], [genero], [origen], [habitat], [observaciones], [imagen], [estado]) VALUES (26, N'Elefante Africano', N'Loxodonta ', 10, N'Macho', N'Africa', N'Terrestre', N'Ninguna', N'elefante-africano.jpg', 1)
SET IDENTITY_INSERT [dbo].[Animales] OFF
GO
SET IDENTITY_INSERT [dbo].[horario] ON 

INSERT [dbo].[horario] ([id_horario], [hora], [estado], [fechaReg]) VALUES (1, N'09:00 A.M', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[horario] ([id_horario], [hora], [estado], [fechaReg]) VALUES (2, N'10:00 A.M', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[horario] ([id_horario], [hora], [estado], [fechaReg]) VALUES (3, N'11:00 A.M', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[horario] ([id_horario], [hora], [estado], [fechaReg]) VALUES (4, N'12:00 A.M', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[horario] ([id_horario], [hora], [estado], [fechaReg]) VALUES (5, N'13:00 P.M', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[horario] ([id_horario], [hora], [estado], [fechaReg]) VALUES (6, N'14:00 P.M', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[horario] ([id_horario], [hora], [estado], [fechaReg]) VALUES (7, N'15:00 P.M', 1, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[horario] ([id_horario], [hora], [estado], [fechaReg]) VALUES (8, N'16:00 P.M', 1, CAST(N'2023-07-03' AS Date))
SET IDENTITY_INSERT [dbo].[horario] OFF
GO
SET IDENTITY_INSERT [dbo].[personalizado] ON 

INSERT [dbo].[personalizado] ([id_personalizado], [id_actividad_informacion], [nombreUsuario], [telefono], [fecha], [estado], [fechaReg]) VALUES (1, 11, N'Juan Perez', N'0987874321', CAST(N'2023-10-10' AS Date), 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[personalizado] ([id_personalizado], [id_actividad_informacion], [nombreUsuario], [telefono], [fecha], [estado], [fechaReg]) VALUES (2, 12, N'Maria Lopez', N'0999121332', CAST(N'2023-07-27' AS Date), 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[personalizado] ([id_personalizado], [id_actividad_informacion], [nombreUsuario], [telefono], [fecha], [estado], [fechaReg]) VALUES (3, 13, N'Pedro Ramirez', N'0995453211', CAST(N'2023-12-20' AS Date), 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[personalizado] ([id_personalizado], [id_actividad_informacion], [nombreUsuario], [telefono], [fecha], [estado], [fechaReg]) VALUES (4, 14, N'Laura Garcia', N'0990089322', CAST(N'2023-08-14' AS Date), 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[personalizado] ([id_personalizado], [id_actividad_informacion], [nombreUsuario], [telefono], [fecha], [estado], [fechaReg]) VALUES (5, 15, N'Carlos Fernandez', N'0909912343', CAST(N'2023-09-30' AS Date), 0, CAST(N'2023-07-03' AS Date))
INSERT [dbo].[personalizado] ([id_personalizado], [id_actividad_informacion], [nombreUsuario], [telefono], [fecha], [estado], [fechaReg]) VALUES (41, 60, N'Visita en el pantano', N'09823722129', CAST(N'2023-07-27' AS Date), 1, CAST(N'2023-07-18' AS Date))
INSERT [dbo].[personalizado] ([id_personalizado], [id_actividad_informacion], [nombreUsuario], [telefono], [fecha], [estado], [fechaReg]) VALUES (42, 70, N'Odalis', N'0932198039', CAST(N'2023-08-31' AS Date), 0, CAST(N'2023-08-17' AS Date))
INSERT [dbo].[personalizado] ([id_personalizado], [id_actividad_informacion], [nombreUsuario], [telefono], [fecha], [estado], [fechaReg]) VALUES (43, 71, N'Prueba', N'0989898989', CAST(N'2023-08-25' AS Date), 1, CAST(N'2023-08-18' AS Date))
INSERT [dbo].[personalizado] ([id_personalizado], [id_actividad_informacion], [nombreUsuario], [telefono], [fecha], [estado], [fechaReg]) VALUES (44, 75, N'Odalis', N'0921475235', CAST(N'2023-08-29' AS Date), 0, CAST(N'2023-08-19' AS Date))
SET IDENTITY_INSERT [dbo].[personalizado] OFF
GO
SET IDENTITY_INSERT [dbo].[Solicitudes] ON 

INSERT [dbo].[Solicitudes] ([ID], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Estado], [FechaReg]) VALUES (1, N'string', N'string', N'string', 0, N'string', N'string', N'string', 0, CAST(N'2023-08-11' AS Date))
INSERT [dbo].[Solicitudes] ([ID], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Estado], [FechaReg]) VALUES (2, N'Edison Eduardo', N'Romero', N'094123', 22, N'0958837152', N'dsdfs', N'sdfs', 0, CAST(N'2023-08-11' AS Date))
INSERT [dbo].[Solicitudes] ([ID], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Estado], [FechaReg]) VALUES (3, N'Edison Eduard', N'Romero', N'123', 12, N'0958837152', N'dsfs', N'sdfsd', 0, CAST(N'2023-08-15' AS Date))
SET IDENTITY_INSERT [dbo].[Solicitudes] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [cedula], [nombre], [apellido], [password]) VALUES (1, N'0943077958', N'eduardo', N'vera', N'123456')
INSERT [dbo].[usuario] ([id], [cedula], [nombre], [apellido], [password]) VALUES (2, N'0932198039', N'Odalis', N' Vera', N'1234')
INSERT [dbo].[usuario] ([id], [cedula], [nombre], [apellido], [password]) VALUES (3, N'0954310736', N'Maximiliano', N' Cabrera', N'123456')
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[voluntarios] ON 

INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (1, N'Maria', N'Lopez', N'0998765432', 25, N'0934567890', N'Trabajó en un refugio de animales', N'Ayudar a cuidar y proteger a los animales', N'Laura.jpg', 1)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (2, N'Maximiliano', N'Cabrera', N'0216', 22, N'096272966', N'Nignuna', N'AMo a los animales', N'imagen3.jpg', 1)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (3, N'Laura', N'Ramirez', N'0926543210', 22, N'0945678901', N'Voluntaria en eventos de adopción', N'Promover la adopción de animales', N'Lady.jpg', 1)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (4, N'Pedro', N'Martinez', N'2190817263', 33, N'0923456789', N'Trabajó como veterinario', N'Brindar atención médica a los animales', N'imagen1.jpg', 1)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (5, N'María', N'Garcia', N'0104567890', 27, N'0998765432', NULL, N'Amor y respeto por la vida animal', NULL, 0)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (6, N'Mino', N'C', N'5614654', 30, N'65145645', N'lmwdklwmkd', N'asnkjn', N'', NULL)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (7, N'Lady', N'Segura', N'5165', 30, N'65145645', N'lmwdklwmkd', N'asnkjn', N'KLMDLKSMD', 0)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (8, N'Derian', N'Rivera', N'0954310835', 24, N'0987452163', N'Ninguna', N'Amor a la naturaleza', N'imagen9.jpg', 1)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (1006, N'kejfnkje', N'kjenfkje', N'6565', 5, N'5145', N'kjenfkjew', N'knefke', N'imagen8.jpg', 0)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (1007, N'Mino', N'Gamboa', N'651651', 7, N'51565', N'knefk', N'krnk', N'imagen1.jpg', 1)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (1008, N'Eduardo', N'string', N'string', 0, N'string', N'string', N'string', N'string', 0)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (1009, N'Odalis', N'Vera', N'0214456871', 21, N'0965478562', N'2 años en un refugio', N'Ayudar a los animales', N'Refugio.jpg', 0)
INSERT [dbo].[voluntarios] ([Id_Voluntarios], [Nombres], [Apellidos], [Cedula], [Edad], [Telefono], [Experiencia], [Motivacion], [Imagen], [Estado]) VALUES (1010, N'Odalis', N'Vera', N'0932198067', 21, N'0932147856', N'Ninguna', N'Animales', N'Angela.jpg', 0)
SET IDENTITY_INSERT [dbo].[voluntarios] OFF
GO
ALTER TABLE [dbo].[actividad] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[actividad] ADD  DEFAULT (CONVERT([date],getdate())) FOR [fechaReg]
GO
ALTER TABLE [dbo].[actividadCabecera] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[actividadCabecera] ADD  DEFAULT (CONVERT([date],getdate())) FOR [fechaReg]
GO
ALTER TABLE [dbo].[Animales] ADD  CONSTRAINT [DF_Animales_estado]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[horario] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[horario] ADD  DEFAULT (CONVERT([date],getdate())) FOR [fechaReg]
GO
ALTER TABLE [dbo].[personalizado] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[personalizado] ADD  DEFAULT (CONVERT([date],getdate())) FOR [fechaReg]
GO
ALTER TABLE [dbo].[Solicitudes] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Solicitudes] ADD  DEFAULT (CONVERT([date],getdate())) FOR [FechaReg]
GO
ALTER TABLE [dbo].[voluntarios] ADD  CONSTRAINT [DF_voluntarios_Estado]  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[actividad]  WITH CHECK ADD FOREIGN KEY([id_actividad_informacion])
REFERENCES [dbo].[actividadCabecera] ([id_actividad_informacion])
GO
ALTER TABLE [dbo].[actividadCabecera]  WITH CHECK ADD FOREIGN KEY([id_horario])
REFERENCES [dbo].[horario] ([id_horario])
GO
ALTER TABLE [dbo].[personalizado]  WITH CHECK ADD FOREIGN KEY([id_actividad_informacion])
REFERENCES [dbo].[actividadCabecera] ([id_actividad_informacion])
GO
/****** Object:  StoredProcedure [dbo].[GET_SP_ACTIVIDADES]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_SP_ACTIVIDADES] (@iTransaccion AS VARCHAR(50)) AS
BEGIN
	DECLARE @respuesta AS VARCHAR(50)
	DECLARE @leyenda AS VARCHAR(50)

	BEGIN TRY

		IF(@iTransaccion = 'CONSULTA_ACTIVIDADES')
			BEGIN
				SELECT	a.id_actividad_informacion			AS id_actividad, 
						a.nombre							AS nombre,
						h.id_horario						AS id_hora,
						h.hora								AS hora, 
						ai.cantidadPersonas					AS cantidadPersonas, 
						ai.cantidadGuias					AS cantidadGuias, 
						a.tiempo							AS tiempo, 
						ai.precio							AS precio, 
						ai.descripcion						AS descripcion, 
						a.imagen							AS imagen
				FROM actividad a
					JOIN actividadCabecera ai ON a.id_actividad_informacion = ai.id_actividad_informacion
					JOIN horario h ON ai.id_horario = h.id_horario
				WHERE	a.estado = 1
				ORDER BY 
						a.id_actividad DESC;
				SET @respuesta = 'OK';
				SET @leyenda = 'Consulta Exitosa';
		END
			   
		IF(@iTransaccion = 'CONSULTA_PERSONALIZADOS')
			BEGIN
				SELECT 
					p.id_actividad_informacion		AS id_personalizado, 
					p.nombreUsuario					AS nombreUsuario, 
					p.telefono						AS telefono, 
					h.id_horario					AS id_hora,
					h.hora							AS hora, 
					ai.cantidadPersonas				AS cantidadPersonas, 
					ai.cantidadGuias				AS cantidadGuias, 
					p.fecha							AS fecha,
					ai.precio						AS precio, 
					ai.descripcion					AS descripcion,
					ai.estado						AS estado
				FROM personalizado p
					JOIN actividadCabecera ai ON p.id_actividad_informacion = ai.id_actividad_informacion
					JOIN horario h ON ai.id_horario = h.id_horario
				WHERE	p.estado = 1
				ORDER BY 
						p.id_personalizado DESC;
		
				SET @respuesta = 'OK';
				SET @leyenda = 'Consulta Exitosa';
		END

		IF(@iTransaccion = 'CONSULTA_HORARIO')
			BEGIN
				SELECT id_horario, hora FROM Horario WHERE estado = 1;
		
				SET @respuesta = 'OK';
				SET @leyenda = 'Consulta Exitosa';
		END

	END TRY

	BEGIN CATCH
		SET @respuesta = 'ERROR';
		SET @leyenda = CONCAT('',ERROR_MESSAGE());
	END CATCH 

	SELECT @respuesta AS respuesta, @leyenda AS leyenda;

END
GO
/****** Object:  StoredProcedure [dbo].[GET_SP_ANIMALES]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_SP_ANIMALES] (@iTransaccion AS VARCHAR(50)) AS
BEGIN
	DECLARE @respuesta AS VARCHAR(50)
	DECLARE @leyenda AS VARCHAR(50)

	BEGIN TRY

		IF (@iTransaccion = 'CONSULTA_ANIMALES')
			BEGIN
				SELECT  a.id_animales        AS id_animales,
						a.nombre             AS nombre,
						a.edad               AS edad,
						a.especie            AS especie,
						a.genero             AS genero,
						a.origen             AS origen,
						a.habitat            AS habitat,
						a.observaciones      AS observaciones,
						a.imagen             AS imagen
				FROM Animales a
				WHERE	a.estado = 1
				ORDER BY 
						a.id_animales DESC;
				SET @respuesta = 'OK';
				SET @leyenda = 'Consulta Exitosa';
			END

		END TRY

	BEGIN CATCH
		SET @respuesta = 'ERROR';
		SET @leyenda = CONCAT('',ERROR_MESSAGE());
	END CATCH 

	SELECT @respuesta AS respuesta, @leyenda AS leyenda;
END
GO
/****** Object:  StoredProcedure [dbo].[GET_SP_USUARIOS]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_SP_USUARIOS]
	@iTransaccion as VARCHAR(50),
	@iXML		  as XML = NULL
AS
BEGIN 
	SET NOCOUNT ON;
	DECLARE @respuesta	AS VARCHAR(10);
	DECLARE @leyenda	AS VARCHAR(50);
	DECLARE @cedula		AS VARCHAR(10);
	DECLARE @clave		AS VARCHAR(50);
	
	BEGIN TRY
		IF (@iTransaccion = 'CONSULTAR_USUARIO_LOGIN')
			BEGIN	
				SELECT @cedula = DATO_XML.X.value('Cedula [1]','VARCHAR(10)'),
					   @clave = DATO_XML.X.value('Password [1]','VARCHAR(50)')
				FROM @iXML.nodes('/Usuario') AS DATO_XML(X)

				SELECT *
				FROM usuario u1
				WHERE u1.cedula = @cedula and u1.password = @clave

				SET @respuesta = 'Bienvenido';
				SET @leyenda = 'Login Exitoso';
			END
	END TRY

	BEGIN CATCH
		SET  @respuesta = 'error';
		SET @leyenda = 'Error al ejecutar el comando en la BD: '+ERROR_MESSAGE();
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[GET_SP_VOLUNTARIOS]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_SP_VOLUNTARIOS] (@iTransaccion AS VARCHAR(50)) AS
BEGIN
	DECLARE @respuesta AS VARCHAR(50)
	DECLARE @leyenda AS VARCHAR(50)

	BEGIN TRY

		IF(@iTransaccion = 'CONSULTA_VOLUNTARIOS')
			BEGIN
				SELECT	v.Id_Voluntarios				AS id_voluntarios, 
						v.Nombres						AS nombres,
						v.Apellidos						AS apellidos,
						v.Cedula						AS cedula, 
						v.Edad							AS edad, 
						v.Telefono						AS telefono, 
						v.Experiencia					AS experiencia, 
						v.Motivacion					AS motivacion, 
						v.Imagen						AS imagen
				FROM   voluntarios v
				WHERE	v.estado = 1
				ORDER BY 
						v.id_voluntarios ASC;
				SET @respuesta = 'OK';
				SET @leyenda = 'Consulta Exitosa';
		END

		IF(@iTransaccion = 'CONSULTA_SOLICITUDES')
			BEGIN
				SELECT	s.Id							AS id_voluntarios, 
						s.Nombres						AS nombres,
						s.Apellidos						AS apellidos,
						s.Cedula						AS cedula, 
						s.Edad							AS edad, 
						s.Telefono						AS telefono, 
						s.Experiencia					AS experiencia, 
						s.Motivacion					AS motivacion
				FROM   Solicitudes s
				WHERE	s.estado = 1
				ORDER BY 
						s.id ASC;
				SET @respuesta = 'OK';
				SET @leyenda = 'Consulta Exitosa';
		END
	END TRY

	BEGIN CATCH
		SET @respuesta = 'ERROR';
		SET @leyenda = CONCAT('',ERROR_MESSAGE());
	END CATCH 
		SELECT @respuesta AS respuesta, @leyenda AS leyenda;
	END


GO
/****** Object:  StoredProcedure [dbo].[SET_SP_ACTIVIDADES]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SET_SP_ACTIVIDADES] (@iTransaccion AS VARCHAR(50), @iXml AS XML) AS
BEGIN
	
	SET NOCOUNT ON;
	DECLARE @respuesta AS VARCHAR(50)
	DECLARE @leyenda AS VARCHAR(50)

	DECLARE @id_actividad_informacion		AS INT
	DECLARE @id_horario						AS INT
	DECLARE @cantidadPersonas				AS INT
	DECLARE @cantidadGuias					AS INT
	DECLARE @precio							AS DECIMAL(8,2)
	DECLARE @descripcion					AS VARCHAR(500)
	DECLARE @nombre							AS VARCHAR(250)
	DECLARE @tiempo							AS VARCHAR(100)
	DECLARE @imagen		 					AS VARCHAR(100)

	BEGIN TRY
		
		BEGIN TRANSACTION TRX_DATOS

			IF(@iTransaccion = 'AGREGAR_ACTIVIDAD')
				BEGIN
					SET @id_horario			=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/Horario/Id_Horario)[1]',		'INT'))
					SET @cantidadPersonas	=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/CantidadPersonas)[1]',		'INT'))
					SET @cantidadGuias		=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/CantidadGuias)[1]',			'INT'))
					SET @precio				=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/Precio)[1]',					'DECIMAL(8,2)'))
					SET @descripcion		=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/Descripcion)[1]',				'VARCHAR(500)'))
					SET @nombre				=	(SELECT @iXml.value('(/Actividad/Nombre)[1]',										'VARCHAR(250)'))
					SET @tiempo				=	(SELECT @iXml.value('(/Actividad/Tiempo)[1]',										'VARCHAR(100)'))
					SET @imagen				=	(SELECT @iXml.value('(/Actividad/Imagen)[1]',										'VARCHAR(100)'))

					INSERT INTO actividadCabecera(id_horario, cantidadPersonas, cantidadGuias, precio, descripcion)
					VALUES (@id_horario, @cantidadPersonas, @cantidadGuias, @precio, @descripcion)

					DECLARE @id INT;
					SET @id = SCOPE_IDENTITY();

					INSERT INTO actividad(id_actividad_informacion, nombre, tiempo, imagen)
					VALUES (@id, @nombre, @tiempo, @imagen)

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Actividad Agregada';
			END
					   
			IF(@iTransaccion = 'ACTUALIZAR_ACTIVIDAD')
				BEGIN
					SET @id_actividad_informacion	=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/Id_ActividadInformacion)[1]',	'INT'))
					SET @id_horario					=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/Horario/Id_Horario)[1]',		'INT'))
					SET @cantidadPersonas			=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/CantidadPersonas)[1]',		'INT'))
					SET @cantidadGuias				=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/CantidadGuias)[1]',			'INT'))
					SET @precio						=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/Precio)[1]',					'DECIMAL(8,2)'))
					SET @descripcion				=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/Descripcion)[1]',				'VARCHAR(500)'))
					SET @nombre						=	(SELECT @iXml.value('(/Actividad/Nombre)[1]',										'VARCHAR(250)'))
					SET @tiempo						=	(SELECT @iXml.value('(/Actividad/Tiempo)[1]',										'VARCHAR(100)'))
					SET @imagen						=	(SELECT @iXml.value('(/Actividad/Imagen)[1]',										'VARCHAR(100)'))

					UPDATE actividadCabecera SET 
						id_horario					=	@id_horario, 
						cantidadPersonas			=	@cantidadPersonas, 
						cantidadGuias				=	@cantidadGuias, 
						precio						=	@precio, 
						descripcion					=	@descripcion
					WHERE 
						id_actividad_informacion	=	@id_actividad_informacion

					UPDATE actividad SET
						nombre						=	@nombre, 
						tiempo						=   @tiempo, 
						imagen						=	@imagen
					WHERE 
						id_actividad_informacion	=	@id_actividad_informacion

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Actividad Actualizada';
			END

			IF(@iTransaccion = 'ELIMINAR_ACTIVIDAD')
				BEGIN
					SET @id_actividad_informacion	=	(SELECT @iXml.value('(/Actividad/ActividadInformacion/Id_ActividadInformacion)[1]',	'INT'))

					UPDATE actividadCabecera		SET estado = 0
					WHERE id_actividad_informacion	= @id_actividad_informacion
					UPDATE actividad				SET estado = 0
					WHERE id_actividad_informacion	= @id_actividad_informacion

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Actividad eliminada';
			END

		if @@TRANCOUNT > 0
			BEGIN
				COMMIT TRANSACTION TRX_DATOS;
			END
		
	END TRY

	BEGIN CATCH
		if @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION TRX_DATOS;
			END
		SET @respuesta = 'ERROR';
		SET @leyenda = 'Inconvenientes para realizar la transaccion: ';
	END CATCH 

	SELECT @respuesta AS respuesta, @leyenda AS leyenda;

END
GO
/****** Object:  StoredProcedure [dbo].[SET_SP_ANIMALES]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SET_SP_ANIMALES] (@iTransaccion AS VARCHAR(50), @iXml AS XML) AS
BEGIN
	
	SET NOCOUNT ON;
	DECLARE @respuesta AS VARCHAR(50)
	DECLARE @leyenda AS VARCHAR(50)

	DECLARE @id_animales AS INT
	DECLARE @nombre AS VARCHAR(100)
	DECLARE @edad AS INT
	DECLARE @origen AS VARCHAR(200)
	DECLARE @especie AS VARCHAR(100)
	DECLARE @genero AS VARCHAR(100)
	DECLARE @habitat AS VARCHAR(200)
	DECLARE @observaciones AS VARCHAR(200)
	DECLARE @imagen AS VARCHAR(100)

	BEGIN TRY
		
		BEGIN TRANSACTION TRX_DATOS

			IF(@iTransaccion = 'AGREGAR_ANIMAL')
					BEGIN

						SET @nombre = (SELECT @iXml.value('(/Animales/Nombre)[1]', 'VARCHAR(100)'))
						SET @edad = (SELECT @iXml.value('(/Animales/Edad)[1]', 'INT'))
						SET @origen = (SELECT @iXml.value('(/Animales/Origen)[1]', 'VARCHAR(200)'))
						SET @especie = (SELECT @iXml.value('(/Animales/Especie)[1]', 'VARCHAR(100)'))
						SET @genero = (SELECT @iXml.value('(/Animales/Genero)[1]', 'VARCHAR(100)'))
						SET @habitat = (SELECT @iXml.value('(/Animales/Habitat)[1]', 'VARCHAR(200)'))
						SET @observaciones = (SELECT @iXml.value('(/Animales/Observaciones)[1]', 'VARCHAR(200)'))
						SET @imagen = (SELECT @iXml.value('(/Animales/Imagen)[1]', 'VARCHAR(100)'))

						INSERT INTO Animales (nombre, edad,origen, especie, genero, habitat, observaciones, imagen)
						VALUES (@nombre, @edad,@origen ,@especie, @genero, @habitat, @observaciones, @imagen)


						SET @respuesta = 'Enhorabuena';
						SET @leyenda = 'Animal Agregado';
			END

					   
			IF(@iTransaccion = 'ACTUALIZAR_ANIMAL')
				BEGIN
					SET @id_animales =	(SELECT @iXml.value('(/Animales/Id_animales)[1]',		'INT'))
					SET @nombre = (SELECT @iXml.value('(/Animales/Nombre)[1]', 'VARCHAR(200)'))
					SET @edad =	(SELECT @iXml.value('(/Animales/Edad)[1]',		'INT'))
					SET @especie	 =   (SELECT @iXml.value('(/Animales/Especie)[1]', 'VARCHAR(200)'))
					SET @genero 	 =   (SELECT @iXml.value('(/Animales/Genero)[1]', 'VARCHAR(200)'))
					SET @habitat 	 =   (SELECT @iXml.value('(/Animales/Habitat)[1]', 'VARCHAR(250)'))
					SET @observaciones 	 =   (SELECT @iXml.value('(/Animales/Observaciones)[1]', 'VARCHAR(250)'))
					SET @imagen 	 =   (SELECT @iXml.value('(/Animales/Imagen)[1]', 'VARCHAR(200)'))

					UPDATE Animales SET 
				
						nombre = @nombre,
						edad = @edad,
						especie = @especie,
						genero = @genero,
						habitat = @habitat,
						observaciones = @observaciones,
						imagen = @imagen
					WHERE 
						id_animales=	@id_animales


					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Animal Actualizado';
			END

			IF(@iTransaccion = 'ELIMINAR_ANIMAL')
				BEGIN
					SET @id_animales =	(SELECT @iXml.value('(/Animales/Id_animales)[1]',		'INT'))

					UPDATE Animales SET estado = 0
					WHERE id_animales	= @id_animales
					
					
					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Animal eliminado';
			END

		if @@TRANCOUNT > 0
			BEGIN
				COMMIT TRANSACTION TRX_DATOS;
			END
		
	END TRY

	BEGIN CATCH
		if @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION TRX_DATOS;
			END
		SET @respuesta = 'ERROR';
		SET @leyenda = 'Inconvenientes para realizar la transaccion: ';
	END CATCH 

	SELECT @respuesta AS respuesta, @leyenda AS leyenda;

END
GO
/****** Object:  StoredProcedure [dbo].[SET_SP_PERSONALIZADOS]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SET_SP_PERSONALIZADOS] (@iTransaccion AS VARCHAR(50), @iXml AS XML) AS
BEGIN
	
	SET NOCOUNT ON;
	DECLARE @respuesta AS VARCHAR(50)
	DECLARE @leyenda AS VARCHAR(50)

	DECLARE @id_actividad_informacion		AS INT
	DECLARE @id_horario						AS INT
	DECLARE @cantidadPersonas				AS INT
	DECLARE @cantidadGuias					AS INT
	DECLARE @precio							AS DECIMAL(8,2)
	DECLARE @descripcion					AS VARCHAR(500)
	DECLARE @nombreUsuario					AS VARCHAR(250)
	DECLARE @telefono						AS VARCHAR(100)
	DECLARE @fecha		 					AS DATE

	BEGIN TRY
		
		BEGIN TRANSACTION TRX_DATOS

			IF(@iTransaccion = 'AGREGAR_PERSONALIZADO')
				BEGIN
					SET @id_horario			=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/Horario/Id_Horario)[1]',			'INT'))
					SET @cantidadPersonas	=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/CantidadPersonas)[1]',			'INT'))
					SET @cantidadGuias		=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/CantidadGuias)[1]',				'INT'))
					SET @precio				=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/Precio)[1]',						'DECIMAL(8,2)'))
					SET @descripcion		=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/Descripcion)[1]',					'VARCHAR(500)'))
					SET @nombreUsuario		=	(SELECT @iXml.value('(/Personalizado/NombreUsuario)[1]',									'VARCHAR(250)'))
					SET @telefono			=	(SELECT @iXml.value('(/Personalizado/Telefono)[1]',											'VARCHAR(100)'))
					SET @fecha				=	(SELECT @iXml.value('(/Personalizado/Fecha)[1]',											'DATE'))

					INSERT INTO actividadCabecera(id_horario, cantidadPersonas, cantidadGuias, precio, descripcion)
					VALUES (@id_horario, @cantidadPersonas, @cantidadGuias, @precio, @descripcion)

					DECLARE @id INT;
					SET @id = SCOPE_IDENTITY();

					INSERT INTO personalizado(id_actividad_informacion, nombreUsuario, telefono, fecha)
					VALUES (@id, @nombreUsuario, @telefono, @fecha)

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Tu valor a cancelar es ' + CONVERT(VARCHAR(10), @precio);

			END
					   
			IF(@iTransaccion = 'ACTUALIZAR_PERSONALIZADO')
				BEGIN
					SET @id_actividad_informacion	=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/Id_ActividadInformacion)[1]',		'INT'))
					SET @id_horario					=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/Horario/Id_Horario)[1]',			'INT'))
					SET @cantidadPersonas			=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/CantidadPersonas)[1]',			'INT'))
					SET @cantidadGuias				=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/CantidadGuias)[1]',				'INT'))
					SET @precio						=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/Precio)[1]',						'DECIMAL(8,2)'))
					SET @descripcion				=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/Descripcion)[1]',					'VARCHAR(500)'))
					SET @nombreUsuario				=	(SELECT @iXml.value('(/Personalizado/NombreUsuario)[1]',									'VARCHAR(250)'))
					SET @telefono					=	(SELECT @iXml.value('(/Personalizado/Telefono)[1]',											'VARCHAR(100)'))
					SET @fecha						=	(SELECT @iXml.value('(/Personalizado/Fecha)[1]',											'DATE'))
					UPDATE actividadCabecera SET 
						id_horario					=	@id_horario, 
						cantidadPersonas			=	@cantidadPersonas, 
						cantidadGuias				=	@cantidadGuias, 
						precio						=	@precio, 
						descripcion					=	@descripcion
					WHERE 
						id_actividad_informacion	=	@id_actividad_informacion

					UPDATE personalizado SET
						nombreUsuario				=	@nombreUsuario,
						telefono					=   @telefono, 
						fecha						=	@fecha
					WHERE 
						id_actividad_informacion	=	@id_actividad_informacion

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Actividad Personalizada Actualizada';
			END

			IF(@iTransaccion = 'ELIMINAR_PERSONALIZADO')
				BEGIN
					SET @id_actividad_informacion	=	(SELECT @iXml.value('(/Personalizado/ActividadInformacion/Id_ActividadInformacion)[1]',		'INT'))

					UPDATE actividadCabecera		SET estado = 0
					WHERE id_actividad_informacion	= @id_actividad_informacion
					UPDATE personalizado			SET estado = 0
					WHERE id_actividad_informacion	= @id_actividad_informacion

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Actividad Personalizada eliminada';
			END

		if @@TRANCOUNT > 0
			BEGIN
				COMMIT TRANSACTION TRX_DATOS;
			END
		
	END TRY

	BEGIN CATCH
		if @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION TRX_DATOS;
			END
		SET @respuesta = 'ERROR';
		SET @leyenda = 'Inconvenientes para realizar la transaccion';
	END CATCH 

	SELECT @respuesta AS respuesta, @leyenda AS leyenda;

END

GO
/****** Object:  StoredProcedure [dbo].[SET_SP_VOLUNTARIOS]    Script Date: 20/8/2023 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SET_SP_VOLUNTARIOS]
@iTransaccion AS VARCHAR(50), 
@iXml AS XML 
AS
BEGIN
	
	SET NOCOUNT ON;
	DECLARE @respuesta AS VARCHAR(50)
	DECLARE @leyenda AS VARCHAR(50)

	DECLARE @Id_Voluntarios					AS INT
	DECLARE @Nombres						AS VARCHAR(50)
	DECLARE @Apellidos						AS VARCHAR(50)
	DECLARE @Cedula							AS VARCHAR(10)
	DECLARE @Edad							AS INT
	DECLARE @Telefono						AS VARCHAR(10)
	DECLARE @Experiencia					AS VARCHAR(200)
	DECLARE @Motivacion						AS VARCHAR(200)
	DECLARE @imagen		 					AS VARCHAR(100)

	BEGIN TRY
		
		BEGIN TRANSACTION TRX_DATOS

			IF(@iTransaccion = 'AGREGAR_VOLUNTARIO')
				BEGIN
					SET @Nombres			=	(SELECT @iXml.value('(/Voluntarios/Nombres)[1]',			'VARCHAR(50)'))
					SET @Apellidos			=	(SELECT @iXml.value('(/Voluntarios/Apellidos)[1]',			'VARCHAR(50)'))
					SET @Cedula				=	(SELECT @iXml.value('(/Voluntarios/Cedula)[1]',				'VARCHAR(10)'))
					SET @Edad				=	(SELECT @iXml.value('(/Voluntarios/Edad)[1]',				'INT'))
					SET @Telefono			=	(SELECT @iXml.value('(/Voluntarios/Telefono)[1]',			'VARCHAR(10)'))
					SET @Experiencia		=	(SELECT @iXml.value('(/Voluntarios/Experiencia)[1]',		'VARCHAR(200)'))
					SET @Motivacion			=	(SELECT @iXml.value('(/Voluntarios/Motivacion)[1]',			'VARCHAR(200)'))
					SET @imagen				=	(SELECT @iXml.value('(/Voluntarios/Imagen)[1]',				'VARCHAR(100)'))

				

					INSERT INTO voluntarios(Nombres, Apellidos, Cedula, Edad, Telefono, Experiencia, Motivacion, Imagen)
					VALUES (@Nombres, @Apellidos, @Cedula, @Edad, @Telefono, @Experiencia, @Motivacion, @imagen)

					

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Voluntario Agregado';
			END
					   
			IF(@iTransaccion = 'ACTUALIZAR_VOLUNTARIO')
				BEGIN
					SET @Id_Voluntarios     =	(SELECT @iXml.value('(/Voluntarios/Id_Voluntarios)[1]',		'INT'))
					SET @Nombres			=	(SELECT @iXml.value('(/Voluntarios/Nombres)[1]',			'VARCHAR(50)'))
					SET @Apellidos			=	(SELECT @iXml.value('(/Voluntarios/Apellidos)[1]',			'VARCHAR(50)'))
					SET @Cedula				=	(SELECT @iXml.value('(/Voluntarios/Cedula)[1]',				'VARCHAR(10)'))
					SET @Edad				=	(SELECT @iXml.value('(/Voluntarios/Edad)[1]',				'INT'))
					SET @Telefono			=	(SELECT @iXml.value('(/Voluntarios/Telefono)[1]',			'VARCHAR(10)'))
					SET @Experiencia		=	(SELECT @iXml.value('(/Voluntarios/Experiencia)[1]',		'VARCHAR(200)'))
					SET @Motivacion			=	(SELECT @iXml.value('(/Voluntarios/Motivacion)[1]',			'VARCHAR(200)'))
					SET @imagen				=	(SELECT @iXml.value('(/Voluntarios/Imagen)[1]',				'VARCHAR(100)'))

					UPDATE voluntarios SET 
						Nombres						=	@Nombres, 
						Apellidos					=	@Apellidos, 
						Cedula						=	@Cedula, 
						Edad						=	@Edad,
						Telefono					=	@Telefono,
						Experiencia					=	@Experiencia,
						Motivacion					=	@Motivacion,
						Imagen						=	@imagen
					WHERE	
						Id_Voluntarios	=	@Id_Voluntarios

					
					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Voluntario Actualizado';
			END

			IF(@iTransaccion = 'ELIMINAR_VOLUNTARIO')
				BEGIN
					SET @Id_Voluntarios	=	(SELECT @iXml.value('(/Voluntarios/Id_Voluntarios)[1]',	'INT'))

					UPDATE voluntarios		SET estado = 0
					WHERE Id_Voluntarios	= @Id_Voluntarios

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Voluntario eliminado';
			END


			IF(@iTransaccion = 'AGREGAR_SOLICITUD')
				BEGIN
					SET @Nombres			=	(SELECT @iXml.value('(/Voluntarios/Nombres)[1]',			'VARCHAR(50)'))
					SET @Apellidos			=	(SELECT @iXml.value('(/Voluntarios/Apellidos)[1]',			'VARCHAR(50)'))
					SET @Cedula				=	(SELECT @iXml.value('(/Voluntarios/Cedula)[1]',				'VARCHAR(10)'))
					SET @Edad				=	(SELECT @iXml.value('(/Voluntarios/Edad)[1]',				'INT'))
					SET @Telefono			=	(SELECT @iXml.value('(/Voluntarios/Telefono)[1]',			'VARCHAR(10)'))
					SET @Experiencia		=	(SELECT @iXml.value('(/Voluntarios/Experiencia)[1]',		'VARCHAR(200)'))
					SET @Motivacion			=	(SELECT @iXml.value('(/Voluntarios/Motivacion)[1]',			'VARCHAR(200)'))

					INSERT INTO Solicitudes(Nombres, Apellidos, Cedula, Edad, Telefono, Experiencia, Motivacion)
					VALUES (@Nombres, @Apellidos, @Cedula, @Edad, @Telefono, @Experiencia, @Motivacion)

					

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Solicitud enviada';
			END
					   
			IF(@iTransaccion = 'ACTUALIZAR_SOLICITUD')
				BEGIN
					SET @Id_Voluntarios	    =	(SELECT @iXml.value('(/Voluntarios/Id_Voluntarios)[1]',		'INT'))
					SET @Nombres			=	(SELECT @iXml.value('(/Voluntarios/Nombres)[1]',			'VARCHAR(50)'))
					SET @Apellidos			=	(SELECT @iXml.value('(/Voluntarios/Apellidos)[1]',			'VARCHAR(50)'))
					SET @Cedula				=	(SELECT @iXml.value('(/Voluntarios/Cedula)[1]',				'VARCHAR(10)'))
					SET @Edad				=	(SELECT @iXml.value('(/Voluntarios/Edad)[1]',				'INT'))
					SET @Telefono			=	(SELECT @iXml.value('(/Voluntarios/Telefono)[1]',			'VARCHAR(10)'))
					SET @Experiencia		=	(SELECT @iXml.value('(/Voluntarios/Experiencia)[1]',		'VARCHAR(200)'))
					SET @Motivacion			=	(SELECT @iXml.value('(/Voluntarios/Motivacion)[1]',			'VARCHAR(200)'))

					UPDATE Solicitudes SET 
						Nombres						=	@Nombres, 
						Apellidos					=	@Apellidos, 
						Cedula						=	@Cedula, 
						Edad						=	@Edad,
						Telefono					=	@Telefono,
						Experiencia					=	@Experiencia,
						Motivacion					=	@Motivacion
					WHERE	
						Id	=	@Id_Voluntarios

					
					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Voluntario Actualizado';
			END

			IF(@iTransaccion = 'ACEPTAR_SOLICITUD')
				BEGIN
					SET @Id_Voluntarios		=	(SELECT @iXml.value('(/Voluntarios/Id_Voluntarios)[1]',	'INT'))

					UPDATE Solicitudes		
					SET estado				= 0
					WHERE Id				= @Id_Voluntarios

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Solicitud aceptada';
			END

			IF(@iTransaccion = 'RECHAZAR_SOLICITUD')
				BEGIN
					SET @Id_Voluntarios		=	(SELECT @iXml.value('(/Voluntarios/Id_Voluntarios)[1]',	'INT'))

					UPDATE Solicitudes		
					SET estado				= 0
					WHERE Id				= @Id_Voluntarios

					SET @respuesta = 'Enhorabuena';
					SET @leyenda = 'Solicitud rechazada';
			END

		if @@TRANCOUNT > 0
			BEGIN
				COMMIT TRANSACTION TRX_DATOS;
			END
		
	END TRY

	BEGIN CATCH
		if @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION TRX_DATOS;
			END
		SET @respuesta = 'ERROR';
		SET @leyenda = 'Inconvenientes para realizar la transaccion: ';
	END CATCH 

	SELECT @respuesta AS respuesta, @leyenda AS leyenda;

END

GO
USE [master]
GO
ALTER DATABASE [BD_Zoologico] SET  READ_WRITE 
GO
