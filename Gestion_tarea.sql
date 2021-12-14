USE [master]
GO
/****** Object:  Database [DBS_Gestion_tareas]    Script Date: 13/12/2021 10:24:51 p. m. ******/
CREATE DATABASE [DBS_Gestion_tareas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBS_Gestion_tareas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBS_Gestion_tareas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBS_Gestion_tareas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBS_Gestion_tareas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBS_Gestion_tareas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBS_Gestion_tareas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBS_Gestion_tareas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET  MULTI_USER 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBS_Gestion_tareas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBS_Gestion_tareas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBS_Gestion_tareas] SET QUERY_STORE = OFF
GO
USE [DBS_Gestion_tareas]
GO
/****** Object:  Table [dbo].[TBL_Empresa]    Script Date: 13/12/2021 10:24:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Empresa](
	[EMP_Nit] [int] NULL,
	[EMP_Nombre] [nvarchar](50) NULL,
	[EMP_localidad] [nvarchar](50) NULL,
	[EMP_Direccion] [nvarchar](10) NULL,
	[EMP_DireccionWeb] [nvarchar](max) NULL,
	[EMP_telefono] [nvarchar](max) NULL,
	[PK_EMP_IdEmpresa] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_EMP_IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Rol]    Script Date: 13/12/2021 10:24:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Rol](
	[ROL_nombre] [nvarchar](50) NULL,
	[ROL_Descripcion] [nvarchar](50) NULL,
	[PK_Rol_IdRol] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_Rol_IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Tarea]    Script Date: 13/12/2021 10:24:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Tarea](
	[TRA_Nombre] [nvarchar](50) NULL,
	[TRA_Descripcion] [text] NULL,
	[TRA_FechaInicio] [datetime] NULL,
	[TRA_FechaFinal] [datetime] NULL,
	[PK_TRA_IdTarea] [int] IDENTITY(1,1) NOT NULL,
	[TRA_estado] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_TRA_IdTarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Usuario]    Script Date: 13/12/2021 10:24:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Usuario](
	[Usu_Tipo_Documento] [nvarchar](50) NULL,
	[Usu_documento] [bigint] NULL,
	[Usu_Nombres] [nvarchar](50) NULL,
	[Usu_apellidos] [nvarchar](50) NULL,
	[Usu_Email] [nvarchar](50) NULL,
	[Usu_telefono] [int] NULL,
	[Usu_Direccion] [nvarchar](50) NULL,
	[Usu_Localidad] [nvarchar](50) NULL,
	[Usu_Clave] [nvarchar](8) NULL,
	[PK_USU_Idusuario] [int] IDENTITY(1,1) NOT NULL,
	[FK_EMP_Idempresa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_USU_Idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Usuario_Has_Rol]    Script Date: 13/12/2021 10:24:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Usuario_Has_Rol](
	[FK_USU_IdUsuario] [int] NULL,
	[FK_ROL_IdRol] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Usuario_Has_Tarea]    Script Date: 13/12/2021 10:24:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Usuario_Has_Tarea](
	[FK_USU_IdUsuario] [int] NULL,
	[FK_TRA_IdTarea] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_Empresa] ON 
GO
INSERT [dbo].[TBL_Empresa] ([EMP_Nit], [EMP_Nombre], [EMP_localidad], [EMP_Direccion], [EMP_DireccionWeb], [EMP_telefono], [PK_EMP_IdEmpresa]) VALUES (142536, N'REEBOK', N'usaquen', N'Carrera 7', NULL, N'78945645', 1)
GO
INSERT [dbo].[TBL_Empresa] ([EMP_Nit], [EMP_Nombre], [EMP_localidad], [EMP_Direccion], [EMP_DireccionWeb], [EMP_telefono], [PK_EMP_IdEmpresa]) VALUES (748596, N'SKYPE', N'antonio ñariño', N'Carrera 3 ', NULL, N'24567899', 2)
GO
SET IDENTITY_INSERT [dbo].[TBL_Empresa] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Rol] ON 
GO
INSERT [dbo].[TBL_Rol] ([ROL_nombre], [ROL_Descripcion], [PK_Rol_IdRol]) VALUES (N'Admin', N'Genera todo tipo de cambios en el sistema', 1)
GO
INSERT [dbo].[TBL_Rol] ([ROL_nombre], [ROL_Descripcion], [PK_Rol_IdRol]) VALUES (N'Empl', N'Gestiona solo tareas', 2)
GO
SET IDENTITY_INSERT [dbo].[TBL_Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Tarea] ON 
GO
INSERT [dbo].[TBL_Tarea] ([TRA_Nombre], [TRA_Descripcion], [TRA_FechaInicio], [TRA_FechaFinal], [PK_TRA_IdTarea], [TRA_estado]) VALUES (N'barrer', N'Tarea nueva', CAST(N'2020-02-11T00:00:00.000' AS DateTime), CAST(N'2020-03-11T00:00:00.000' AS DateTime), 1, N'Nueva')
GO
INSERT [dbo].[TBL_Tarea] ([TRA_Nombre], [TRA_Descripcion], [TRA_FechaInicio], [TRA_FechaFinal], [PK_TRA_IdTarea], [TRA_estado]) VALUES (N'trapiar', N'Tarea en gestion', CAST(N'2020-04-11T00:00:00.000' AS DateTime), CAST(N'2020-05-11T00:00:00.000' AS DateTime), 2, N'Proceso')
GO
INSERT [dbo].[TBL_Tarea] ([TRA_Nombre], [TRA_Descripcion], [TRA_FechaInicio], [TRA_FechaFinal], [PK_TRA_IdTarea], [TRA_estado]) VALUES (N'comer', N'Tarea imposible de gestionar', CAST(N'2020-05-11T00:00:00.000' AS DateTime), CAST(N'2020-05-11T00:00:00.000' AS DateTime), 3, N'Rechazada')
GO
INSERT [dbo].[TBL_Tarea] ([TRA_Nombre], [TRA_Descripcion], [TRA_FechaInicio], [TRA_FechaFinal], [PK_TRA_IdTarea], [TRA_estado]) VALUES (N'archivar', N'Proceso finalizado', CAST(N'2020-06-11T00:00:00.000' AS DateTime), CAST(N'2020-07-11T00:00:00.000' AS DateTime), 4, N'Finalizada')
GO
INSERT [dbo].[TBL_Tarea] ([TRA_Nombre], [TRA_Descripcion], [TRA_FechaInicio], [TRA_FechaFinal], [PK_TRA_IdTarea], [TRA_estado]) VALUES (N'conteo', N'Contar los archivos', CAST(N'2020-04-11T00:00:00.000' AS DateTime), CAST(N'2020-07-11T00:00:00.000' AS DateTime), 5, N'Nueva')
GO
INSERT [dbo].[TBL_Tarea] ([TRA_Nombre], [TRA_Descripcion], [TRA_FechaInicio], [TRA_FechaFinal], [PK_TRA_IdTarea], [TRA_estado]) VALUES (N'Contestar', N'Contestar llamadas', CAST(N'2020-06-11T00:00:00.000' AS DateTime), CAST(N'2020-05-11T00:00:00.000' AS DateTime), 6, N'Proceso')
GO
INSERT [dbo].[TBL_Tarea] ([TRA_Nombre], [TRA_Descripcion], [TRA_FechaInicio], [TRA_FechaFinal], [PK_TRA_IdTarea], [TRA_estado]) VALUES (N'Reporte', N'Generar reporte data', CAST(N'2020-06-11T00:00:00.000' AS DateTime), CAST(N'2020-05-11T00:00:00.000' AS DateTime), 7, N'Rechazada')
GO
INSERT [dbo].[TBL_Tarea] ([TRA_Nombre], [TRA_Descripcion], [TRA_FechaInicio], [TRA_FechaFinal], [PK_TRA_IdTarea], [TRA_estado]) VALUES (N'Bk', N'generar Bk BDD', CAST(N'2020-06-11T00:00:00.000' AS DateTime), CAST(N'2020-05-11T00:00:00.000' AS DateTime), 8, N'Finalizada')
GO
SET IDENTITY_INSERT [dbo].[TBL_Tarea] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Usuario] ON 
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc', 6322956, N'Juan manuel', N'Velasco Borja', N'manuelvelascobo85@hotmail.co', 123456, N'Cr 111 #22h -02', N'Fontibón', N'Volun', 1, 1)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 11449750, N'Fredy Nicolas
', N'Carpeta Carpeta
', N'freyn186@hotmail.com
', 4693481, N'Carrera 105b # 74b 04
', N'Engativá
', N'Mas
', 2, 2)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 13724502, N'Carlos Rodrigo
', N'Lozano Rojas
', N'doctortoledano@hotmail.com
', 3143777, N'Carrera 105 # 74 04
', N'keneedy', N'Volun', 3, 1)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 20699246, N'Gema Ruth
', N'Vega Rodriguez
', N'gema.vega@hotmail.com
', 4693448, N'Cl 11 #22h -02', N'Bosa', N'Mas
', 4, 2)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 20959236, N'Yadira
', N'Sanchez Fuquene
', N'yayita167@yahoo.es
', 2278790, N'Cr 105 f bis # 70c -16
', N'Engativá
', N'Volun
', 5, 1)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 24041871, N'Ana
', N'Noguera Pinzon
', N'ananoguera74@gmail.com
', 7857854, N'Tv 37 # 20-12 Tr 3 Ap 501
', N'suba', N'Mas
', 6, 2)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 26452687, N'Elicila
', N'Castro Calderón
', N'elicila.castro@gmail.com
', 2458766, N'CR 92#72-41 SUR
', N'Bosa
', N'Volun
', 7, 1)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 34966617, N'Doris Isabel
', N'Diaz Hernandez
', N'n/a', 9765487, N'Kr 37 # 20-12 Tr 3 Ap 501
', N'Fontibon', N'Mas', 8, 2)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 37009759, N'Angela Yaneth
', N'Conde Ramirez
', N'angyacora_234@hotmail.com
', 4569875, N'Cra 24 a sur', N'Engativa', N'Volun', 9, 1)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 38363083, N'Leidy Carolina
', N'Noguera Castro
', N'carito.1984@hotmail.es
', 2934178, N'Cll 36 Bis Sur # 88 F - 37
', N'Kennedy
', N'Mas
', 10, 2)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 46677502, N'Mary Lucero
', N'Castro Barbosa
', N'dalulove2304@gmail.com
', 6598317, N'Cr 113B # 152 B - 49 Apto 202
', N'Suba
', N'Volun
', 11, 1)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 51699688, N'Dora Yolima
', N'Acosta Camberos
', N'yolaco06@hotmail.com
', 6959927, N'Cra 103A # 135 A 24
', N'Suba
', N'Mas
', 12, 2)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 51800209, N'Doris
', N'Lopez Pinzon
', N'da@gmail.com
', 4645448, N'Cl 11 C # 80B-23
', N'Kennedy
', N'Volun
', 13, 1)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 51824081, N'Flor Alba
', N'Cuellar
', N'Cuellar
@yahho.com', 3204296, N'Kl 37 # 20-12 Tr ', N'engativa', N'Mas
', 14, 2)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 51827796, N'Olga Lucia
', N'Cortes Torres
', N'olgalucortest@hotmail.com
', 4610150, N'CLL 70B # 106B - 04
', N'Engativá
', N'Volun
', 15, 1)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 51834225, N'Clara Ines
', N'Pataquiva Garcia
', N'clarai8809@hotmail.com
', 9775487, N'Cl 40c # 12a-22
', N'San Cristóbal
', N'Mas
', 16, 2)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 52012268, N'Alix Rocio
', N'Rodriguez Barreto
', N'alixrocior@hotmail.com
', 7851833, N'DG 89 D #49 - 03 CS 29
', N'Bosa
', N'Volun
', 17, 1)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 52055633, N'Fanny Stella
', N'Galindo Munevar
', N'gal52_@hotmail.es
', 6548975, N'CRA 96 BIS # 68 A - 42
', N'Engativá
', N'Mas
', 18, 2)
GO
INSERT [dbo].[TBL_Usuario] ([Usu_Tipo_Documento], [Usu_documento], [Usu_Nombres], [Usu_apellidos], [Usu_Email], [Usu_telefono], [Usu_Direccion], [Usu_Localidad], [Usu_Clave], [PK_USU_Idusuario], [FK_EMP_Idempresa]) VALUES (N'cc
', 52074136, N'Xiomara
', N'Triviño Garrido
', N'xiomaratg_26@hotmail.com
', 5498798, N'TRANS 74 # 11A -15 AP 819 TR 6
', N'Puente aranda', N'Volun
', 19, 1)
GO
SET IDENTITY_INSERT [dbo].[TBL_Usuario] OFF
GO
INSERT [dbo].[TBL_Usuario_Has_Rol] ([FK_USU_IdUsuario], [FK_ROL_IdRol]) VALUES (1, 1)
GO
INSERT [dbo].[TBL_Usuario_Has_Rol] ([FK_USU_IdUsuario], [FK_ROL_IdRol]) VALUES (2, 2)
GO
INSERT [dbo].[TBL_Usuario_Has_Tarea] ([FK_USU_IdUsuario], [FK_TRA_IdTarea]) VALUES (1, 1)
GO
INSERT [dbo].[TBL_Usuario_Has_Tarea] ([FK_USU_IdUsuario], [FK_TRA_IdTarea]) VALUES (2, 2)
GO
ALTER TABLE [dbo].[TBL_Usuario]  WITH CHECK ADD FOREIGN KEY([FK_EMP_Idempresa])
REFERENCES [dbo].[TBL_Empresa] ([PK_EMP_IdEmpresa])
GO
ALTER TABLE [dbo].[TBL_Usuario_Has_Rol]  WITH CHECK ADD FOREIGN KEY([FK_ROL_IdRol])
REFERENCES [dbo].[TBL_Rol] ([PK_Rol_IdRol])
GO
ALTER TABLE [dbo].[TBL_Usuario_Has_Rol]  WITH CHECK ADD FOREIGN KEY([FK_USU_IdUsuario])
REFERENCES [dbo].[TBL_Usuario] ([PK_USU_Idusuario])
GO
ALTER TABLE [dbo].[TBL_Usuario_Has_Tarea]  WITH CHECK ADD FOREIGN KEY([FK_TRA_IdTarea])
REFERENCES [dbo].[TBL_Tarea] ([PK_TRA_IdTarea])
GO
ALTER TABLE [dbo].[TBL_Usuario_Has_Tarea]  WITH CHECK ADD FOREIGN KEY([FK_USU_IdUsuario])
REFERENCES [dbo].[TBL_Usuario] ([PK_USU_Idusuario])
GO
EXEC sys.sp_addextendedproperty @name=N'hola', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TBL_Tarea', @level2type=N'COLUMN',@level2name=N'TRA_Nombre'
GO
USE [master]
GO
ALTER DATABASE [DBS_Gestion_tareas] SET  READ_WRITE 
GO
