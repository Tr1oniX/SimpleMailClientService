USE [master]
GO
/****** Object:  Database [Mail_DB]    Script Date: 2/6/2019 5:21:17 PM ******/
CREATE DATABASE [Mail_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mail_DB', FILENAME = N'C:\SQLServer\MSSQL14.MSSQLSERVER\MSSQL\DATA\Mail_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mail_DB_log', FILENAME = N'C:\SQLServer\MSSQL14.MSSQLSERVER\MSSQL\DATA\Mail_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Mail_DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mail_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mail_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mail_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mail_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mail_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mail_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mail_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mail_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mail_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mail_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mail_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mail_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mail_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mail_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mail_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mail_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mail_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mail_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mail_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mail_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mail_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mail_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mail_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mail_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Mail_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Mail_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mail_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mail_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mail_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mail_DB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Mail_DB', N'ON'
GO
ALTER DATABASE [Mail_DB] SET QUERY_STORE = OFF
GO
USE [Mail_DB]
GO
/****** Object:  Table [dbo].[Mails]    Script Date: 2/6/2019 5:21:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mails](
	[Subject] [nvarchar](2000) NULL,
	[Date] [date] NULL,
	[To] [nvarchar](100) NULL,
	[From] [nvarchar](100) NULL,
	[Tags] [nvarchar](2000) NULL,
	[Content] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Mails] ([Subject], [Date], [To], [From], [Tags], [Content]) VALUES (N'Hello!', CAST(N'2018-11-12' AS Date), N'test@mail.ru', N'admin@mail.ru', N'hello', N'Hello. How are you?')
INSERT [dbo].[Mails] ([Subject], [Date], [To], [From], [Tags], [Content]) VALUES (N'2nd doc', CAST(N'2018-12-12' AS Date), N'test@mail.ru', N'producer@mail.ru', N'docs', N'There is 2nd doc: /////')
INSERT [dbo].[Mails] ([Subject], [Date], [To], [From], [Tags], [Content]) VALUES (N'Thx', CAST(N'2019-01-01' AS Date), N'producer@mail.ru', N'test@mail.ru', N'thanks', N'Thx man')
INSERT [dbo].[Mails] ([Subject], [Date], [To], [From], [Tags], [Content]) VALUES (N'TestCases', CAST(N'2019-01-02' AS Date), N'test@mail.ru', N'tester@mail.ru', N'test', N'Attached')
USE [master]
GO
ALTER DATABASE [Mail_DB] SET  READ_WRITE 
GO
