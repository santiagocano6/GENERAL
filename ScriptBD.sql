USE [master]
GO
/****** Object:  Database [ASPEstudio]    Script Date: 30/10/2016 18:13:07 ******/
CREATE DATABASE [ASPEstudio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASPEstudio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVERSCR\MSSQL\DATA\ASPEstudio.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ASPEstudio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVERSCR\MSSQL\DATA\ASPEstudio_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ASPEstudio] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASPEstudio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASPEstudio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASPEstudio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASPEstudio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASPEstudio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASPEstudio] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASPEstudio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASPEstudio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASPEstudio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASPEstudio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASPEstudio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASPEstudio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASPEstudio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASPEstudio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASPEstudio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASPEstudio] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASPEstudio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASPEstudio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASPEstudio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASPEstudio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASPEstudio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASPEstudio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASPEstudio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASPEstudio] SET RECOVERY FULL 
GO
ALTER DATABASE [ASPEstudio] SET  MULTI_USER 
GO
ALTER DATABASE [ASPEstudio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASPEstudio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASPEstudio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASPEstudio] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ASPEstudio] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ASPEstudio', N'ON'
GO
USE [ASPEstudio]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[IdiomaID] [int] NULL,
	[UniversidadID] [int] NULL,
	[PaisID] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Documento]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documento](
	[DocumentoId] [int] IDENTITY(1,1) NOT NULL,
	[NombreDocumento] [nvarchar](max) NOT NULL,
	[Materia] [nvarchar](max) NOT NULL,
	[CalificacionDocumento] [int] NOT NULL,
	[CalidadDocumento] [int] NOT NULL,
	[FechaDocumento] [datetime] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[PaisID] [int] NOT NULL,
	[IdiomaID] [int] NOT NULL,
	[UniversidadID] [int] NOT NULL,
	[ApplicationUserID] [uniqueidentifier] NULL,
	[ApplicationUser_Id] [nvarchar](128) NULL,
	[Descripcion] [nvarchar](max) NOT NULL CONSTRAINT [DF__Documento__Descr__5AEE82B9]  DEFAULT (''),
	[Link] [nvarchar](max) NOT NULL CONSTRAINT [DF__Documento__Link__5BE2A6F2]  DEFAULT (''),
 CONSTRAINT [PK_dbo.Documento] PRIMARY KEY CLUSTERED 
(
	[DocumentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma](
	[IdiomaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Idioma] PRIMARY KEY CLUSTERED 
(
	[IdiomaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Noticias]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[NoticiaID] [uniqueidentifier] NOT NULL,
	[TituloNoticia] [nvarchar](max) NOT NULL,
	[DetalleNoticia] [nvarchar](max) NOT NULL,
	[RutaImagen] [nvarchar](max) NULL,
	[Publico] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Noticias] PRIMARY KEY CLUSTERED 
(
	[NoticiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pais]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[PaisID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Pais] PRIMARY KEY CLUSTERED 
(
	[PaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Universidad]    Script Date: 30/10/2016 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universidad](
	[UniversidadID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[PaisID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Universidad] PRIMARY KEY CLUSTERED 
(
	[UniversidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 30/10/2016 18:13:07 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdiomaID]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_IdiomaID] ON [dbo].[AspNetUsers]
(
	[IdiomaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaisID]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_PaisID] ON [dbo].[AspNetUsers]
(
	[PaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UniversidadID]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_UniversidadID] ON [dbo].[AspNetUsers]
(
	[UniversidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 30/10/2016 18:13:07 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApplicationUser_Id]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationUser_Id] ON [dbo].[Documento]
(
	[ApplicationUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IdiomaID]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_IdiomaID] ON [dbo].[Documento]
(
	[IdiomaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaisID]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_PaisID] ON [dbo].[Documento]
(
	[PaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UniversidadID]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_UniversidadID] ON [dbo].[Documento]
(
	[UniversidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaisID]    Script Date: 30/10/2016 18:13:07 ******/
CREATE NONCLUSTERED INDEX [IX_PaisID] ON [dbo].[Universidad]
(
	[PaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.IdiomaModels_IdiomaID] FOREIGN KEY([IdiomaID])
REFERENCES [dbo].[Idioma] ([IdiomaID])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.IdiomaModels_IdiomaID]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.PaisModels_PaisID] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([PaisID])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.PaisModels_PaisID]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.UniversidadModels_UniversidadID] FOREIGN KEY([UniversidadID])
REFERENCES [dbo].[Universidad] ([UniversidadID])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.UniversidadModels_UniversidadID]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentoModels_dbo.AspNetUsers_ApplicationUser_Id] FOREIGN KEY([ApplicationUser_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_dbo.DocumentoModels_dbo.AspNetUsers_ApplicationUser_Id]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentoModels_dbo.IdiomaModels_IdiomaID] FOREIGN KEY([IdiomaID])
REFERENCES [dbo].[Idioma] ([IdiomaID])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_dbo.DocumentoModels_dbo.IdiomaModels_IdiomaID]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentoModels_dbo.PaisModels_PaisID] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([PaisID])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_dbo.DocumentoModels_dbo.PaisModels_PaisID]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DocumentoModels_dbo.UniversidadModels_UniversidadID] FOREIGN KEY([UniversidadID])
REFERENCES [dbo].[Universidad] ([UniversidadID])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_dbo.DocumentoModels_dbo.UniversidadModels_UniversidadID]
GO
ALTER TABLE [dbo].[Universidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UniversidadModels_dbo.PaisModels_PaisID] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([PaisID])
GO
ALTER TABLE [dbo].[Universidad] CHECK CONSTRAINT [FK_dbo.UniversidadModels_dbo.PaisModels_PaisID]
GO
USE [master]
GO
ALTER DATABASE [ASPEstudio] SET  READ_WRITE 
GO
