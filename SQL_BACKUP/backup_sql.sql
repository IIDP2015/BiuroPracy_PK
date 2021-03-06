USE [master]
GO
/****** Object:  Database [BiuroPracy_nr_albumu]    Script Date: 2017-12-06 18:49:58 ******/
CREATE DATABASE [BiuroPracy_nr_albumu] ON  PRIMARY 
( NAME = N'BiuroPracy_nr_albumu', FILENAME = N'C:\Program Files\Microsoft SQL Server2008\MSSQL10_50.SQL2008\MSSQL\DATA\BiuroPracy_nr_albumu.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'BiuroPracy_nr_albumu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server2008\MSSQL10_50.SQL2008\MSSQL\DATA\BiuroPracy_nr_albumu_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BiuroPracy_nr_albumu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET ARITHABORT OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET RECOVERY FULL 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET  MULTI_USER 
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BiuroPracy_nr_albumu', N'ON'
GO
USE [BiuroPracy_nr_albumu]
GO
/****** Object:  Table [dbo].[City]    Script Date: 2017-12-06 18:49:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contract]    Script Date: 2017-12-06 18:49:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 2017-12-06 18:49:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2017-12-06 18:49:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](max) NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[ContractId] [int] NULL,
	[ProffesionId] [int] NULL,
	[LocationId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Location]    Script Date: 2017-12-06 18:49:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[id] [int] NOT NULL,
	[Street] [nvarchar](50) NULL,
	[CityId] [int] NOT NULL,
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[PostalCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proffesion]    Script Date: 2017-12-06 18:49:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proffesion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tabela] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Employee]    Script Date: 2017-12-06 18:49:58 ******/
CREATE NONCLUSTERED INDEX [IX_Employee] ON [dbo].[Employee]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Location]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Country] FOREIGN KEY([id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Country]
GO
USE [master]
GO
ALTER DATABASE [BiuroPracy_nr_albumu] SET  READ_WRITE 
GO
