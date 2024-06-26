USE [master]
GO
/****** Object:  Database [QuanLyThuoc]    Script Date: 07/04/2024 8:59:05 CH ******/
CREATE DATABASE [QuanLyThuoc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyThuoc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyThuoc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyThuoc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyThuoc_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyThuoc] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThuoc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuoc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThuoc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThuoc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyThuoc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThuoc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyThuoc] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThuoc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThuoc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThuoc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThuoc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyThuoc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyThuoc] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyThuoc', N'ON'
GO
ALTER DATABASE [QuanLyThuoc] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyThuoc] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyThuoc]
GO
/****** Object:  Table [dbo].[Medicines]    Script Date: 07/04/2024 8:59:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicines](
	[MedicineID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](1000) NULL,
	[Price] [decimal](10, 2) NULL,
	[Quantity] [int] NULL,
	[Unit] [nvarchar](100) NULL,
	[Price2] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MedicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [QuanLyThuoc] SET  READ_WRITE 
GO
