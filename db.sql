USE [master]
GO
/****** Object:  Database [WEBEISAPI]    Script Date: 5/9/2018 3:07:39 PM ******/
CREATE DATABASE [WEBEISAPI] ON  PRIMARY 
( NAME = N'WEBEISAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\WEBEISAPI.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WEBEISAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\WEBEISAPI_log.ldf' , SIZE = 10240KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WEBEISAPI] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEBEISAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEBEISAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEBEISAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEBEISAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEBEISAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEBEISAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEBEISAPI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEBEISAPI] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WEBEISAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEBEISAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEBEISAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEBEISAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEBEISAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEBEISAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEBEISAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEBEISAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEBEISAPI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WEBEISAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEBEISAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEBEISAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEBEISAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEBEISAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEBEISAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEBEISAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEBEISAPI] SET RECOVERY FULL 
GO
ALTER DATABASE [WEBEISAPI] SET  MULTI_USER 
GO
ALTER DATABASE [WEBEISAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEBEISAPI] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WEBEISAPI', N'ON'
GO
USE [WEBEISAPI]
GO
/****** Object:  Table [dbo].[Hall]    Script Date: 5/9/2018 3:07:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hall](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HallName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Hall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaffRecord]    Script Date: 5/9/2018 3:07:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [nchar](10) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [bigint] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StaffRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Hall] ON 

INSERT [dbo].[Hall] ([Id], [HallName]) VALUES (2, N'Hall2')
INSERT [dbo].[Hall] ([Id], [HallName]) VALUES (3, N'Hall3')
SET IDENTITY_INSERT [dbo].[Hall] OFF
SET IDENTITY_INSERT [dbo].[StaffRecord] ON 

INSERT [dbo].[StaffRecord] ([Id], [StaffID], [FirstName], [LastName], [PhoneNumber], [Email], [Address]) VALUES (1, N'A1111     ', N'SAM', N'AWU', 8125597845, N'samawu@gmail.com', N'surulere')
INSERT [dbo].[StaffRecord] ([Id], [StaffID], [FirstName], [LastName], [PhoneNumber], [Email], [Address]) VALUES (2, N'A1000     ', N'Vivian', N'Oboite', 0, N'joyoboite@gmail.com,', N'Surulere')
SET IDENTITY_INSERT [dbo].[StaffRecord] OFF
USE [master]
GO
ALTER DATABASE [WEBEISAPI] SET  READ_WRITE 
GO
