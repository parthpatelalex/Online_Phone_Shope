USE [master]
GO
/****** Object:  Database [Online_Phone_Shope]    Script Date: 08-08-2022 08:58:47 ******/
CREATE DATABASE [Online_Phone_Shope]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Online_Phone_Shope', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Online_Phone_Shope.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Online_Phone_Shope_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Online_Phone_Shope_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Online_Phone_Shope] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Online_Phone_Shope].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Online_Phone_Shope] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET ARITHABORT OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Online_Phone_Shope] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Online_Phone_Shope] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Online_Phone_Shope] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Online_Phone_Shope] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Online_Phone_Shope] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Online_Phone_Shope] SET  MULTI_USER 
GO
ALTER DATABASE [Online_Phone_Shope] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Online_Phone_Shope] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Online_Phone_Shope] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Online_Phone_Shope] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Online_Phone_Shope] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Online_Phone_Shope] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Online_Phone_Shope] SET QUERY_STORE = OFF
GO
USE [Online_Phone_Shope]
GO
/****** Object:  Schema [Manufacturer]    Script Date: 08-08-2022 08:58:47 ******/
CREATE SCHEMA [Manufacturer]
GO
/****** Object:  Schema [Phone_Display]    Script Date: 08-08-2022 08:58:47 ******/
CREATE SCHEMA [Phone_Display]
GO
/****** Object:  Table [Manufacturer].[Phone_Manufacturer]    Script Date: 08-08-2022 08:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Manufacturer].[Phone_Manufacturer](
	[Manufacturer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Image_] [image] NULL,
	[Manufacturer_Name] [nvarchar](50) NULL,
	[Created_By] [nvarchar](10) NULL,
	[Create_Time] [date] NULL,
	[Updated_By] [nvarchar](10) NULL,
	[Update_Time] [date] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Manufacturer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Phone_Display].[Details]    Script Date: 08-08-2022 08:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Phone_Display].[Details](
	[Detail_ID] [int] IDENTITY(1,1) NOT NULL,
	[Display_ID] [int] NULL,
	[Color] [nvarchar](15) NULL,
	[Screen_size] [float] NULL,
	[Storage_GB] [int] NULL,
	[Ram_GB] [int] NULL,
	[Charger_Type] [nvarchar](15) NULL,
	[HandsFree] [varchar](5) NULL,
	[System_Version] [nvarchar](20) NULL,
	[Wifi] [nvarchar](10) NULL,
	[Bluetooth] [nvarchar](10) NULL,
	[Camera_MP] [int] NULL,
	[Battery_MAH] [int] NULL,
	[Created_By] [nvarchar](10) NULL,
	[Create_Time] [date] NULL,
	[Updated_By] [nvarchar](10) NULL,
	[Update_Time] [date] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Phone_Display].[Phone_Details]    Script Date: 08-08-2022 08:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Phone_Display].[Phone_Details](
	[Display_ID] [int] IDENTITY(1,1) NOT NULL,
	[Model_Name] [nvarchar](20) NULL,
	[Phone_Image] [image] NULL,
	[Manufacturer_ID] [int] NULL,
	[Price_$] [int] NULL,
	[Stock] [int] NULL,
	[Rating] [float] NULL,
	[Created_By] [nvarchar](10) NULL,
	[Create_Time] [date] NULL,
	[Updated_By] [nvarchar](10) NULL,
	[Update_Time] [date] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Display_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Phone_Display].[Details]  WITH CHECK ADD FOREIGN KEY([Display_ID])
REFERENCES [Phone_Display].[Phone_Details] ([Display_ID])
GO
ALTER TABLE [Phone_Display].[Phone_Details]  WITH CHECK ADD FOREIGN KEY([Manufacturer_ID])
REFERENCES [Manufacturer].[Phone_Manufacturer] ([Manufacturer_ID])
GO
USE [master]
GO
ALTER DATABASE [Online_Phone_Shope] SET  READ_WRITE 
GO
