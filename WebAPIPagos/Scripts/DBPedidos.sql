USE [master]
GO

/****** Object:  Database [Pedidos]    Script Date: 13/04/2022 20:29:38 ******/
CREATE DATABASE [Pedidos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBPRUEBAS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBPRUEBAS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBPRUEBAS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBPRUEBAS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pedidos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Pedidos] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Pedidos] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Pedidos] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Pedidos] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Pedidos] SET ARITHABORT OFF 
GO

ALTER DATABASE [Pedidos] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Pedidos] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Pedidos] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Pedidos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Pedidos] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Pedidos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Pedidos] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Pedidos] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Pedidos] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Pedidos] SET  ENABLE_BROKER 
GO

ALTER DATABASE [Pedidos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Pedidos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Pedidos] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Pedidos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Pedidos] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Pedidos] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Pedidos] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Pedidos] SET RECOVERY FULL 
GO

ALTER DATABASE [Pedidos] SET  MULTI_USER 
GO

ALTER DATABASE [Pedidos] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Pedidos] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Pedidos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Pedidos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Pedidos] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Pedidos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Pedidos] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Pedidos] SET  READ_WRITE 
GO


