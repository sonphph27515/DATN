USE [master]
GO
/****** Object:  Database [Winter_Clothes8386_SD108_FA243]    Script Date: 12/30/2024 9:25:08 PM ******/
CREATE DATABASE [Winter_Clothes8386_SD108_FA243]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Winter_Clothes8386_SD108_FA243', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Winter_Clothes8386_SD108_FA243.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Winter_Clothes8386_SD108_FA243_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Winter_Clothes8386_SD108_FA243_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Winter_Clothes8386_SD108_FA243].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET ARITHABORT OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET  MULTI_USER 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET QUERY_STORE = OFF
GO
USE [Winter_Clothes8386_SD108_FA243]
GO
/****** Object:  Table [dbo].[anh_san_pham]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anh_san_pham](
	[id] [uniqueidentifier] NOT NULL,
	[id_san_pham] [uniqueidentifier] NULL,
	[duong_dan] [nvarchar](max) NOT NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chat_lieu]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_lieu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giam_gia]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giam_gia](
	[id] [uniqueidentifier] NOT NULL,
	[ma] [varchar](10) NOT NULL,
	[so_phan_tram_giam] [int] NULL,
	[so_phan_tien_giam_toi_thieu] [int] NULL,
	[so_luong] [int] NULL,
	[ngay_bat_dau] [date] NULL,
	[ngay_ket_thuc] [date] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gio_hang_chi_tiet]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gio_hang_chi_tiet](
	[id] [uniqueidentifier] NOT NULL,
	[id_khach_hang] [uniqueidentifier] NULL,
	[id_san_pham_chi_tiet] [uniqueidentifier] NULL,
	[gia] [decimal](20, 0) NULL,
	[so_luong] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hinh_thuc_thanh_toan]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hinh_thuc_thanh_toan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[ma] [nvarchar](50) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id] [uniqueidentifier] NOT NULL,
	[ma] [varchar](50) NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_thanh_toan] [datetime] NULL,
	[ngay_van_chuyen] [datetime] NULL,
	[ngay_nhan] [datetime] NULL,
	[id_khach_hang] [uniqueidentifier] NULL,
	[id_nhan_vien] [uniqueidentifier] NULL,
	[id_giam_gia] [uniqueidentifier] NULL,
	[id_hinh_thuc_thanh_toan] [int] NULL,
	[nguoi_nhan] [nvarchar](100) NULL,
	[email] [nvarchar](50) NULL,
	[so_dien_thoai] [nvarchar](15) NULL,
	[tong_tien] [decimal](20, 0) NULL,
	[so_tien_giam] [decimal](20, 0) NULL,
	[thanh_toan] [decimal](20, 0) NULL,
	[dia_chi] [nvarchar](100) NULL,
	[xa_phuong] [nvarchar](80) NULL,
	[quan_huyen] [nvarchar](80) NULL,
	[tinh_thanh_pho] [nvarchar](80) NULL,
	[loai_hoa_don] [int] NULL,
	[ma_van_chuyen] [varchar](50) NULL,
	[ten_don_vi_van_chuyen] [nvarchar](max) NULL,
	[phi_van_chuyen] [decimal](20, 0) NULL,
	[anh_hoa_don_chuyen_khoan] [nvarchar](max) NULL,
	[ghi_chu] [nvarchar](max) NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[id] [uniqueidentifier] NOT NULL,
	[id_hoa_don] [uniqueidentifier] NULL,
	[id_san_pham_chi_tiet] [uniqueidentifier] NULL,
	[id_khuyen_mai] [uniqueidentifier] NULL,
	[gia] [decimal](20, 0) NULL,
	[so_luong] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id] [uniqueidentifier] NOT NULL,
	[ho_va_ten] [nvarchar](100) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[so_dien_thoai] [nvarchar](15) NULL,
	[dia_chi] [nvarchar](100) NULL,
	[xa_phuong] [nvarchar](80) NULL,
	[quan_huyen] [nvarchar](80) NULL,
	[tinh_thanh_pho] [nvarchar](80) NULL,
	[mat_khau] [nvarchar](50) NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyen_mai]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyen_mai](
	[id] [uniqueidentifier] NOT NULL,
	[ma] [varchar](10) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[so_phan_tram_giam] [int] NULL,
	[ngay_bat_dau] [date] NULL,
	[ngay_ket_thuc] [date] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyen_mai_chi_tiet]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyen_mai_chi_tiet](
	[id] [uniqueidentifier] NOT NULL,
	[id_khuyen_mai] [uniqueidentifier] NULL,
	[id_san_pham_chi_tiet] [uniqueidentifier] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kich_co]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kich_co](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mau_sac]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mau_sac](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[id] [uniqueidentifier] NOT NULL,
	[ma] [varchar](20) NOT NULL,
	[ho_va_ten] [nvarchar](100) NULL,
	[email] [nvarchar](50) NULL,
	[so_dien_thoai] [nvarchar](15) NULL,
	[mat_khau] [nvarchar](50) NULL,
	[dia_chi] [nvarchar](100) NULL,
	[xa_phuong] [nvarchar](80) NULL,
	[quan_huyen] [nvarchar](80) NULL,
	[tinh_thanh_pho] [nvarchar](80) NULL,
	[ngay_vao_lam] [date] NULL,
	[chuc_vu] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id] [uniqueidentifier] NOT NULL,
	[ten] [nvarchar](max) NOT NULL,
	[anh] [nvarchar](max) NULL,
	[id_loai] [int] NOT NULL,
	[id_thuong_hieu] [int] NOT NULL,
	[id_chat_lieu] [int] NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham_chi_tiet]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham_chi_tiet](
	[id] [uniqueidentifier] NOT NULL,
	[ma_san_pham] [varchar](20) NULL,
	[id_san_pham] [uniqueidentifier] NULL,
	[id_kich_co] [int] NULL,
	[id_mau_sac] [int] NULL,
	[so_luong] [int] NULL,
	[mo_ta] [nvarchar](max) NULL,
	[gia] [decimal](20, 0) NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuong_hieu]    Script Date: 12/30/2024 9:25:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuong_hieu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[ngay_tao] [date] NULL,
	[ngay_sua] [date] NULL,
	[trang_thai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[anh_san_pham] ([id], [id_san_pham], [duong_dan], [trang_thai]) VALUES (N'1a1ecf92-95bd-4256-941c-004b7a85bf4c', NULL, N'/images/quan_ni.png', 1)
INSERT [dbo].[anh_san_pham] ([id], [id_san_pham], [duong_dan], [trang_thai]) VALUES (N'4a86f334-5a14-4642-b2cc-bb88e04fe44b', N'abd1c964-7784-47f3-816d-1ecc444901c4', N'/images/Ao_len.png', 1)
INSERT [dbo].[anh_san_pham] ([id], [id_san_pham], [duong_dan], [trang_thai]) VALUES (N'97319f18-c20c-4619-a787-c1543e2165d8', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', N'/images/Ao_hoodie', 1)
GO
SET IDENTITY_INSERT [dbo].[chat_lieu] ON 

INSERT [dbo].[chat_lieu] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'Nỉ', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[chat_lieu] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'Len', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[chat_lieu] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (3, N'cottong', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[chat_lieu] OFF
GO
INSERT [dbo].[giam_gia] ([id], [ma], [so_phan_tram_giam], [so_phan_tien_giam_toi_thieu], [so_luong], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'41151b4e-1863-4201-9d0d-772b36d062bd', N'GG0003', 25, 0, 200, CAST(N'2024-02-01' AS Date), CAST(N'2024-03-01' AS Date), CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 0)
INSERT [dbo].[giam_gia] ([id], [ma], [so_phan_tram_giam], [so_phan_tien_giam_toi_thieu], [so_luong], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'df1c90d0-1cf1-4ee9-9b0a-d41d6bc3d1ae', N'GG0002', 15, 0, 100, CAST(N'2024-01-01' AS Date), CAST(N'2024-02-01' AS Date), CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 0)
INSERT [dbo].[giam_gia] ([id], [ma], [so_phan_tram_giam], [so_phan_tien_giam_toi_thieu], [so_luong], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'f70800be-66a5-4f5e-a8ce-fd52f85d66bf', N'GG0001', 0, 0, 100000, CAST(N'2024-01-01' AS Date), CAST(N'2999-02-01' AS Date), CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
GO
INSERT [dbo].[gio_hang_chi_tiet] ([id], [id_khach_hang], [id_san_pham_chi_tiet], [gia], [so_luong], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c7684af0-9db9-4f8a-95a2-0017d4f5460b', NULL, NULL, CAST(500000 AS Decimal(20, 0)), 2, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[gio_hang_chi_tiet] ([id], [id_khach_hang], [id_san_pham_chi_tiet], [gia], [so_luong], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'cb8e3296-e996-4e75-8118-1d09b20be22d', NULL, NULL, CAST(1200000 AS Decimal(20, 0)), 1, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[hinh_thuc_thanh_toan] ON 

INSERT [dbo].[hinh_thuc_thanh_toan] ([id], [ten], [ma], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'Tiền mặt', N'1', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[hinh_thuc_thanh_toan] ([id], [ten], [ma], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'Chuyển khoản', N'2', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[hinh_thuc_thanh_toan] OFF
GO
INSERT [dbo].[hoa_don] ([id], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_van_chuyen], [ngay_nhan], [id_khach_hang], [id_nhan_vien], [id_giam_gia], [id_hinh_thuc_thanh_toan], [nguoi_nhan], [email], [so_dien_thoai], [tong_tien], [so_tien_giam], [thanh_toan], [dia_chi], [xa_phuong], [quan_huyen], [tinh_thanh_pho], [loai_hoa_don], [ma_van_chuyen], [ten_don_vi_van_chuyen], [phi_van_chuyen], [anh_hoa_don_chuyen_khoan], [ghi_chu], [ngay_sua], [trang_thai]) VALUES (N'd885d89a-ff93-42d5-99ab-8c842fe45d5d', N'HD0002', CAST(N'2024-02-01T00:00:00.000' AS DateTime), CAST(N'2024-02-02T00:00:00.000' AS DateTime), CAST(N'2024-02-03T00:00:00.000' AS DateTime), CAST(N'2024-02-04T00:00:00.000' AS DateTime), N'1059524b-8190-4101-bceb-61502d405992', NULL, NULL, 2, N'Trần Thị B', N'tranthib@example.com', N'0987654321', CAST(1050000 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), N'456 Đường B', N'Phường W', N'Quận V', N'TP. U', 1, N'VC002', N'Giao Hàng Nhanh', CAST(50000 AS Decimal(20, 0)), N'/images/hoa_don_002.png', N'Ghi chú 2', CAST(N'2024-02-01' AS Date), 1)
INSERT [dbo].[hoa_don] ([id], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_van_chuyen], [ngay_nhan], [id_khach_hang], [id_nhan_vien], [id_giam_gia], [id_hinh_thuc_thanh_toan], [nguoi_nhan], [email], [so_dien_thoai], [tong_tien], [so_tien_giam], [thanh_toan], [dia_chi], [xa_phuong], [quan_huyen], [tinh_thanh_pho], [loai_hoa_don], [ma_van_chuyen], [ten_don_vi_van_chuyen], [phi_van_chuyen], [anh_hoa_don_chuyen_khoan], [ghi_chu], [ngay_sua], [trang_thai]) VALUES (N'54bdce6f-126f-4f9a-bca5-e7f39bafb381', N'HD0001', CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-01-02T00:00:00.000' AS DateTime), CAST(N'2024-01-03T00:00:00.000' AS DateTime), CAST(N'2024-01-04T00:00:00.000' AS DateTime), N'52069a4a-95fc-4b7c-942f-ac94809065ae', NULL, NULL, 1, N'Nguyễn Văn A', N'nguyenvana@example.com', N'0123456789', CAST(480000 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), CAST(0 AS Decimal(20, 0)), N'123 Đường A', N'Phường X', N'Quận Y', N'TP. Z', 1, N'VC001', N'Viettel', CAST(30000 AS Decimal(20, 0)), N'/images/hoa_don_001.png', N'Ghi chú 1', CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[hoa_don] ([id], [ma], [ngay_tao], [ngay_thanh_toan], [ngay_van_chuyen], [ngay_nhan], [id_khach_hang], [id_nhan_vien], [id_giam_gia], [id_hinh_thuc_thanh_toan], [nguoi_nhan], [email], [so_dien_thoai], [tong_tien], [so_tien_giam], [thanh_toan], [dia_chi], [xa_phuong], [quan_huyen], [tinh_thanh_pho], [loai_hoa_don], [ma_van_chuyen], [ten_don_vi_van_chuyen], [phi_van_chuyen], [anh_hoa_don_chuyen_khoan], [ghi_chu], [ngay_sua], [trang_thai]) VALUES (N'3f764d2b-811d-41d7-aaec-f7ed62e28ffa', N'HD0003', CAST(N'2024-12-30T13:58:56.320' AS DateTime), NULL, NULL, NULL, NULL, N'68ad2496-9012-405e-9d5c-85346d8d8943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-12-30' AS Date), 0)
GO
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_san_pham_chi_tiet], [id_khuyen_mai], [gia], [so_luong], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'ad2c3310-27f5-448d-ad78-9251aea96613', N'd885d89a-ff93-42d5-99ab-8c842fe45d5d', N'05194d30-2d45-483e-a887-0946b6dc4eb2', N'af7d2e6e-fbb2-4559-b462-78a490ef21be', CAST(1000000 AS Decimal(20, 0)), 1, CAST(N'2024-02-01' AS Date), CAST(N'2024-02-01' AS Date), 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_hoa_don], [id_san_pham_chi_tiet], [id_khuyen_mai], [gia], [so_luong], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'19b3e0a9-5cd1-442a-ae37-ebf3010bc534', N'54bdce6f-126f-4f9a-bca5-e7f39bafb381', N'0e2d43ee-6223-4b05-93ca-6344b35772cc', N'ed3cd951-93b7-473f-b1e9-375cdeed3867', CAST(450000 AS Decimal(20, 0)), 2, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
GO
INSERT [dbo].[khach_hang] ([id], [ho_va_ten], [email], [so_dien_thoai], [dia_chi], [xa_phuong], [quan_huyen], [tinh_thanh_pho], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'1059524b-8190-4101-bceb-61502d405992', N'Trần Thị B', N'tranthib@example.com', N'0987654321', N'456 Đường B', N'Phường W', N'Quận V', N'TP. U', N'password456', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[khach_hang] ([id], [ho_va_ten], [email], [so_dien_thoai], [dia_chi], [xa_phuong], [quan_huyen], [tinh_thanh_pho], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'52069a4a-95fc-4b7c-942f-ac94809065ae', N'Nguyễn Văn A', N'nguyenvana@example.com', N'0123456789', N'123 Đường A', N'Phường X', N'Quận Y', N'TP. Z', N'password123', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[khach_hang] ([id], [ho_va_ten], [email], [so_dien_thoai], [dia_chi], [xa_phuong], [quan_huyen], [tinh_thanh_pho], [mat_khau], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'a590aa32-3f0b-4040-ab46-d8b8adb301de', N'Lê C D', N'lecd@example.com', N'1122334455', N'789 Đường C', N'Phường Q', N'Quận R', N'TP. S', N'password789', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
GO
INSERT [dbo].[khuyen_mai] ([id], [ma], [ten], [so_phan_tram_giam], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'ed3cd951-93b7-473f-b1e9-375cdeed3867', N'KM0001', N'Giảm giá 10%', 10, CAST(N'2024-01-01' AS Date), CAST(N'2024-02-01' AS Date), CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[khuyen_mai] ([id], [ma], [ten], [so_phan_tram_giam], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'af7d2e6e-fbb2-4559-b462-78a490ef21be', N'KM0002', N'Giảm giá 20%', 20, CAST(N'2024-02-01' AS Date), CAST(N'2024-03-01' AS Date), CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
GO
INSERT [dbo].[khuyen_mai_chi_tiet] ([id], [id_khuyen_mai], [id_san_pham_chi_tiet], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'a6a11829-9ebb-42cc-9799-968bacb25161', N'af7d2e6e-fbb2-4559-b462-78a490ef21be', N'05194d30-2d45-483e-a887-0946b6dc4eb2', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[khuyen_mai_chi_tiet] ([id], [id_khuyen_mai], [id_san_pham_chi_tiet], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'867d6c5b-0ea7-4bb1-8bdc-e51e9cbfde21', N'ed3cd951-93b7-473f-b1e9-375cdeed3867', N'0e2d43ee-6223-4b05-93ca-6344b35772cc', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[kich_co] ON 

INSERT [dbo].[kich_co] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'S', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[kich_co] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'M', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[kich_co] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (3, N'L', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[kich_co] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (4, N'XL', CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
SET IDENTITY_INSERT [dbo].[kich_co] OFF
GO
SET IDENTITY_INSERT [dbo].[loai] ON 

INSERT [dbo].[loai] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'Quần áo', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[loai] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'Phụ kiện', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[loai] OFF
GO
SET IDENTITY_INSERT [dbo].[mau_sac] ON 

INSERT [dbo].[mau_sac] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'Đỏ', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[mau_sac] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'Xanh', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[mau_sac] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (3, N'Vàng', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[mau_sac] OFF
GO
INSERT [dbo].[nhan_vien] ([id], [ma], [ho_va_ten], [email], [so_dien_thoai], [mat_khau], [dia_chi], [xa_phuong], [quan_huyen], [tinh_thanh_pho], [ngay_vao_lam], [chuc_vu], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'f454d514-0ac2-485f-bfa6-2b361f3b26c4', N'NV0003', N'Nguyễn Ngọc Trường', N'truong@example.com', N'1122334466', N'password789', N'456 Đường F', N'Phường W', N'Quận V', N'TP. U', CAST(N'2024-01-01' AS Date), 1, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 0)
INSERT [dbo].[nhan_vien] ([id], [ma], [ho_va_ten], [email], [so_dien_thoai], [mat_khau], [dia_chi], [xa_phuong], [quan_huyen], [tinh_thanh_pho], [ngay_vao_lam], [chuc_vu], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'2dd740d9-130e-472d-86af-45a0e48f8f1d', N'NV0002', N'Huy Trần', N'huy@example.com', N'0987654320', N'password456', N'123 Đường E', N'Phường Z', N'Quận Y', N'TP. X', CAST(N'2024-01-01' AS Date), 1, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 0)
INSERT [dbo].[nhan_vien] ([id], [ma], [ho_va_ten], [email], [so_dien_thoai], [mat_khau], [dia_chi], [xa_phuong], [quan_huyen], [tinh_thanh_pho], [ngay_vao_lam], [chuc_vu], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'68ad2496-9012-405e-9d5c-85346d8d8943', N'NV0001', N'Sơn', N'son@gmail.com', N'0123456780', N'Ae8386', N'789 Đường D', N'Phường P', N'Quận O', N'TP. N', CAST(N'2024-01-01' AS Date), 1, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 0)
GO
INSERT [dbo].[san_pham] ([id], [ten], [anh], [id_loai], [id_thuong_hieu], [id_chat_lieu], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'abd1c964-7784-47f3-816d-1ecc444901c4', N'Áo len 8386', N'/images/ao_len.png', 1, 1, 2, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[san_pham] ([id], [ten], [anh], [id_loai], [id_thuong_hieu], [id_chat_lieu], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'7a28d06c-5380-402a-9fe7-b465d35a4159', N'Quẩn nỉ 8386', N'/images/quan_ni.png', 1, 1, 1, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[san_pham] ([id], [ten], [anh], [id_loai], [id_thuong_hieu], [id_chat_lieu], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'e006a5e4-222f-4656-8343-b86a9e8c54e0', N'Áo hoodie 8386', N'/images/Ao_hoodie.png', 1, 1, 2, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
GO
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'00094694-cdc1-406a-b405-03739509600e', N'SP0005', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 1, 1, 50, N'them ao', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'05194d30-2d45-483e-a887-0946b6dc4eb2', N'SP0002', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 2, 2, 50, N'Áo Hoodie của Ae 8386', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-01-01' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'53b09c08-392b-48cb-a9dc-09e4fa0a7940', N'SP0020', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 3, 1, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'e4d87a4d-00d5-4d67-936c-0d824e561ab2', N'SP0016', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 2, 3, 30, N'ok', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'fd2b87bb-36df-479e-809d-166fb8646f4a', N'SP0034', N'abd1c964-7784-47f3-816d-1ecc444901c4', 1, 1, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'5ee1b95f-5921-47b4-8835-193118799489', N'SP0023', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 2, 2, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'3034395c-9fb4-47ab-bca4-21be62929fda', N'SP0038', N'abd1c964-7784-47f3-816d-1ecc444901c4', 3, 3, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'481dc36f-0fad-4947-9ee9-21e2fc292d69', N'SP0026', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 1, 3, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'11618b76-4e83-4e03-85e7-276a9e479ba3', N'SP0009', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 3, 3, 50, N'them ao', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'02d9d810-99c5-4805-9d42-358064f7760c', N'SP0013', N'abd1c964-7784-47f3-816d-1ecc444901c4', 2, 1, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'64f49aae-86cd-48be-ac02-39b3a5a9d039', N'SP0035', N'abd1c964-7784-47f3-816d-1ecc444901c4', 3, 1, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'4446003d-3cdf-4583-ad57-3d60c1c0b93f', N'SP0015', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 2, 1, 30, N'ok', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'16868e52-551c-4673-9d50-4143533c092d', N'SP0028', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 3, 3, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'8b6f7131-7282-48f5-90ce-42898c2c0142', N'SP0030', N'abd1c964-7784-47f3-816d-1ecc444901c4', 1, 2, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'bc6a5f82-2a0f-48e5-8a01-45b1f6972a8c', N'SP0018', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 1, 1, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'10869892-3cd6-4ce8-b639-4906602baf16', N'SP0027', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 2, 3, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'10e948ff-8773-42c2-b552-53586053244f', N'SP0012', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 3, 2, 50, N'ok', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'277abca9-3be6-42b4-aa53-5be98866afd0', N'SP0003', NULL, 3, NULL, 200, N'Quần Nỉ của Ae 8386', CAST(300000 AS Decimal(20, 0)), CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'4e0ba2a2-1493-4c5e-99a2-5da7f65f462a', N'SP0019', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 2, 1, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'0e2d43ee-6223-4b05-93ca-6344b35772cc', N'SP0001', N'abd1c964-7784-47f3-816d-1ecc444901c4', 1, NULL, 100, N'Áo Len mới nhất của Ae 8386', CAST(500000 AS Decimal(20, 0)), CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'2183d57f-351f-420d-81d2-6437d6fbd2fa', N'SP0025', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 4, 3, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'fb9f8cde-4877-4fe0-ac21-657bb7b765a4', N'SP0006', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 3, 1, 50, N'them ao', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'64e5023f-d2c3-40cd-8bee-78e354c69d04', N'SP0037', N'abd1c964-7784-47f3-816d-1ecc444901c4', 1, 3, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'ef518aa6-7b91-4841-837e-7dcb87828016', N'SP0007', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 4, 3, 50, N'them ao', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'521d7d16-5aad-4a6d-84e6-7df20fbe3dd1', N'SP0021', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 4, 2, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'e68aa660-ea23-4621-9497-8d1a5d9170d1', N'SP0008', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 1, 3, 50, N'them ao', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'f05f4b96-d64f-42e8-ad3e-93d8144305a8', N'SP0032', N'abd1c964-7784-47f3-816d-1ecc444901c4', 3, 2, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'a7885802-f4d9-4809-9e9e-97b5851f435e', N'SP0014', N'abd1c964-7784-47f3-816d-1ecc444901c4', 2, 3, 50, N'ok', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'367a1acb-24fd-4fac-bfe1-9f872f544db5', N'SP0011', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 1, 2, 50, N'ok', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'966b4fa1-72c3-4960-918b-a9151cb295d3', N'SP0022', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 1, 2, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'a977a8f7-d22e-4b55-b508-acdb24a5d76e', N'SP0029', N'abd1c964-7784-47f3-816d-1ecc444901c4', 4, 2, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'0f8ed97a-da3e-403b-b359-b3aa21ddc51d', N'SP0033', N'abd1c964-7784-47f3-816d-1ecc444901c4', 4, 1, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'99cb4dc9-bc47-4392-80ae-bac11aea63ce', N'SP0010', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 4, 2, 50, N'ok', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'f6962af7-9bd0-433f-875b-c03860a6f8ef', N'SP0024', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 3, 2, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'ab48c951-dbb2-4261-ad9d-cd6a25484bb7', N'SP0036', N'abd1c964-7784-47f3-816d-1ecc444901c4', 4, 3, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'b2138aac-ae30-4934-a70a-d40f5caa3f70', N'SP0031', N'abd1c964-7784-47f3-816d-1ecc444901c4', 2, 2, 50, N'ok', CAST(30000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c42ff03b-ec72-4d2c-9064-ec9473188133', N'SP0017', N'7a28d06c-5380-402a-9fe7-b465d35a4159', 4, 1, 20, N'ok', CAST(50000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
INSERT [dbo].[san_pham_chi_tiet] ([id], [ma_san_pham], [id_san_pham], [id_kich_co], [id_mau_sac], [so_luong], [mo_ta], [gia], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'0a8344d1-9063-4157-b815-f0bd8c89a52f', N'SP0004', N'e006a5e4-222f-4656-8343-b86a9e8c54e0', 4, 1, 50, N'them ao', CAST(24000 AS Decimal(20, 0)), CAST(N'2024-12-30' AS Date), CAST(N'2024-12-30' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[thuong_hieu] ON 

INSERT [dbo].[thuong_hieu] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (1, N'8386', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[thuong_hieu] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (2, N'Adidas', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
INSERT [dbo].[thuong_hieu] ([id], [ten], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (3, N'Nike', CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[thuong_hieu] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__hoa_don__3213C8B680F142E7]    Script Date: 12/30/2024 9:25:08 PM ******/
ALTER TABLE [dbo].[hoa_don] ADD UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__khuyen_m__3213C8B6330D93DF]    Script Date: 12/30/2024 9:25:08 PM ******/
ALTER TABLE [dbo].[khuyen_mai] ADD UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__nhan_vie__3213C8B67772CCAF]    Script Date: 12/30/2024 9:25:08 PM ******/
ALTER TABLE [dbo].[nhan_vien] ADD UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[anh_san_pham] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[giam_gia] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] ADD  DEFAULT ((0)) FOR [gia]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT ((0)) FOR [tong_tien]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT ((0)) FOR [so_tien_giam]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT ((0)) FOR [thanh_toan]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT ((0)) FOR [phi_van_chuyen]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] ADD  DEFAULT ((0)) FOR [gia]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[khuyen_mai] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[khuyen_mai_chi_tiet] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[nhan_vien] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[san_pham] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] ADD  DEFAULT ((0)) FOR [gia]
GO
ALTER TABLE [dbo].[anh_san_pham]  WITH CHECK ADD FOREIGN KEY([id_san_pham])
REFERENCES [dbo].[san_pham] ([id])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_san_pham_chi_tiet])
REFERENCES [dbo].[san_pham_chi_tiet] ([id])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([id_giam_gia])
REFERENCES [dbo].[giam_gia] ([id])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([id_hinh_thuc_thanh_toan])
REFERENCES [dbo].[hinh_thuc_thanh_toan] ([id])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([id_nhan_vien])
REFERENCES [dbo].[nhan_vien] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_khuyen_mai])
REFERENCES [dbo].[khuyen_mai] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_san_pham_chi_tiet])
REFERENCES [dbo].[san_pham_chi_tiet] ([id])
GO
ALTER TABLE [dbo].[khuyen_mai_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_khuyen_mai])
REFERENCES [dbo].[khuyen_mai] ([id])
GO
ALTER TABLE [dbo].[khuyen_mai_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_san_pham_chi_tiet])
REFERENCES [dbo].[san_pham_chi_tiet] ([id])
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD FOREIGN KEY([id_chat_lieu])
REFERENCES [dbo].[chat_lieu] ([id])
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD FOREIGN KEY([id_loai])
REFERENCES [dbo].[loai] ([id])
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD FOREIGN KEY([id_thuong_hieu])
REFERENCES [dbo].[thuong_hieu] ([id])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_kich_co])
REFERENCES [dbo].[kich_co] ([id])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_mau_sac])
REFERENCES [dbo].[mau_sac] ([id])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD FOREIGN KEY([id_san_pham])
REFERENCES [dbo].[san_pham] ([id])
GO
USE [master]
GO
ALTER DATABASE [Winter_Clothes8386_SD108_FA243] SET  READ_WRITE 
GO
