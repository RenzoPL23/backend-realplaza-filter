USE [master]
GO
/****** Object:  Database [RealPlaza]    Script Date: 23/01/2023 00:27:10 ******/
CREATE DATABASE [RealPlaza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RealPlaza', FILENAME = N'D:\devprograms\SQL SERVER\MSSQL15.MSSQLSERVER\MSSQL\DATA\RealPlaza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RealPlaza_log', FILENAME = N'D:\devprograms\SQL SERVER\MSSQL15.MSSQLSERVER\MSSQL\DATA\RealPlaza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RealPlaza] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RealPlaza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RealPlaza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RealPlaza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RealPlaza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RealPlaza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RealPlaza] SET ARITHABORT OFF 
GO
ALTER DATABASE [RealPlaza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RealPlaza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RealPlaza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RealPlaza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RealPlaza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RealPlaza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RealPlaza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RealPlaza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RealPlaza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RealPlaza] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RealPlaza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RealPlaza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RealPlaza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RealPlaza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RealPlaza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RealPlaza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RealPlaza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RealPlaza] SET RECOVERY FULL 
GO
ALTER DATABASE [RealPlaza] SET  MULTI_USER 
GO
ALTER DATABASE [RealPlaza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RealPlaza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RealPlaza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RealPlaza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RealPlaza] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RealPlaza] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RealPlaza', N'ON'
GO
ALTER DATABASE [RealPlaza] SET QUERY_STORE = OFF
GO
USE [RealPlaza]
GO
/****** Object:  Schema [Tienda]    Script Date: 23/01/2023 00:27:11 ******/
CREATE SCHEMA [Tienda]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 23/01/2023 00:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [int] IDENTITY(1,1) NOT NULL,
	[CodigoProducto] [varchar](200) NOT NULL,
	[TipoProductoID] [int] NOT NULL,
	[Imagen] [nvarchar](500) NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Precio] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Nombre] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 23/01/2023 00:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[TipoProductoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
 CONSTRAINT [PK_TipoProducto] PRIMARY KEY CLUSTERED 
(
	[TipoProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (1, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 0', 200, 2, N'Item 0')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (2, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 1', 201, 2, N'Item 1')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (3, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 2', 202, 2, N'Item 2')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (4, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 3', 203, 2, N'Item 3')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (5, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 4', 204, 2, N'Item 4')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (6, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 5', 205, 2, N'Item 5')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (7, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 6', 206, 2, N'Item 6')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (8, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 7', 207, 2, N'Item 7')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (9, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 8', 208, 2, N'Item 8')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (10, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 9', 209, 2, N'Item 9')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (11, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 10', 210, 2, N'Item 10')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (12, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 11', 211, 2, N'Item 11')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (13, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 12', 212, 2, N'Item 12')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (14, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 13', 213, 2, N'Item 13')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (15, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 14', 214, 2, N'Item 14')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (16, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 15', 215, 2, N'Item 15')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (17, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 16', 216, 2, N'Item 16')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (18, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 17', 217, 2, N'Item 17')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (19, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 18', 218, 2, N'Item 18')
INSERT [dbo].[Productos] ([ProductoID], [CodigoProducto], [TipoProductoID], [Imagen], [Descripcion], [Precio], [Stock], [Nombre]) VALUES (20, N'qwea', 1, N'https://ichef.bbci.co.uk/news/640/cpsprodpb/89E2/production/_106589253_amino.jpg', N'Descripcion 19', 219, 2, N'Item 19')
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoProducto] ON 

INSERT [dbo].[TipoProducto] ([TipoProductoID], [Nombre]) VALUES (1, N'Tipo a')
SET IDENTITY_INSERT [dbo].[TipoProducto] OFF
GO
ALTER TABLE [dbo].[Productos] ADD  DEFAULT ('') FOR [Nombre]
GO
/****** Object:  StoredProcedure [Tienda].[Productos_Agregar]    Script Date: 23/01/2023 00:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [Tienda].[Productos_Agregar]
@Nombre nvarchar(200),
@TipoProducto int,
@CodigoProducto nvarchar(200),
@Imagen nvarchar(200),
@Descripcion nvarchar(200),
@Precio int,
@Stock int
AS
BEGIN
Insert INTO Productos(
		Nombre,
		CodigoProducto,
		TipoProductoID,
		Imagen,
		Descripcion,
		Precio,
		Stock)
		VALUES(
		@Nombre,
		@CodigoProducto,
		@TipoProducto,
		@Imagen,
		@Descripcion,
		@Precio,
		@Stock
		)
END
GO
/****** Object:  StoredProcedure [Tienda].[Productos_Listar]    Script Date: 23/01/2023 00:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [Tienda].[Productos_Listar]
AS
BEGIN
	select 
		ProductoID,
		Nombre,
		CodigoProducto,
		TipoProductoID,
		Imagen,
		Descripcion,
		Precio,
		Stock
	from Productos
END
GO
/****** Object:  StoredProcedure [Tienda].[Productos_Total]    Script Date: 23/01/2023 00:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [Tienda].[Productos_Total]
AS
BEGIN
	select 
		COUNT(1) as 'Total'
	from Productos
END
GO
USE [master]
GO
ALTER DATABASE [RealPlaza] SET  READ_WRITE 
GO
