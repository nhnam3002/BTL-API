CREATE DATABASE NOVA
USE [NOVA]
GO
/****** Object:  Table [dbo].[CaiDats]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaiDats](
	[Id] [int] NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[GioLamViec] [nvarchar](50) NULL,
	[GiaoHang] [nvarchar](50) NULL,
	[HoanTien] [nvarchar](50) NULL,
	[SDTLienHe] [nvarchar](50) NULL,
	[EmailLienHe] [nvarchar](50) NULL,
	[FaceBook] [nvarchar](max) NULL,
	[GooglePlus] [nvarchar](max) NULL,
	[Twiter] [nvarchar](max) NULL,
	[YouTube] [nvarchar](max) NULL,
	[Instargram] [nvarchar](max) NULL,
	[GoogleMap] [nvarchar](max) NULL,
	[MatKhauMail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhaps]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhaps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[TongTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDons]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDons](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DetailBill] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPhams]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPhams](
	[MaChiTietSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[MoTa] [nvarchar](350) NOT NULL,
	[ChiTiet] [nvarchar](max) NULL,
 CONSTRAINT [PK_DetailProducts] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietTaiKhoans]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTaiKhoans](
	[MaChitietTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[AnhDaiDien] [nvarchar](500) NULL,
 CONSTRAINT [PK_InformationAccounts] PRIMARY KEY CLUSTERED 
(
	[MaChitietTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenMucs]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMucs](
	[MaChuyenMuc] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMucCha] [int] NULL,
	[TenChuyenMuc] [nvarchar](50) NULL,
	[DacBiet] [bit] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[MaChuyenMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKBanTins]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKBanTins](
	[Id] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuats]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuats](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[LinkWeb] [nvarchar](max) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhaps]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhaps](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaNhaPhanPhoi] [int] NULL,
	[NgayTao] [datetime] NULL,
	[KieuThanhToan] [nvarchar](max) NULL,
	[MaTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDons]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDons](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [datetime] NULL,
	[NgayDuyet] [datetime] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[Diachi] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChiGiaoHang] [nvarchar](350) NULL,
	[ThoiGianGiaoHang] [datetime] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangs]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoans]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoans](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](250) NULL,
 CONSTRAINT [PK_TypeAccounts] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaPhanPhois]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaPhanPhois](
	[MaNhaPhanPhoi] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaPhanPhoi] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCaos]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCaos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[LinkQuangCao] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMuc] [int] NULL,
	[TenSanPham] [nvarchar](150) NULL,
	[AnhDaiDien] [nvarchar](350) NULL,
	[Gia] [decimal](18, 0) NULL,
	[GiaGiam] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [bit] NULL,
	[LuotXem] [int] NULL,
	[DacBiet] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams_NhaPhanPhois]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams_NhaPhanPhois](
	[MaSanPham] [int] NOT NULL,
	[MaNhaPhanPhoi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[MaAnh] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[TieuDe1] [nvarchar](250) NULL,
	[TieuDe2] [nvarchar](250) NULL,
	[MoTa1] [nvarchar](250) NULL,
	[MoTa2] [nvarchar](250) NULL,
	[MoTa3] [nvarchar](250) NULL,
	[MoTa4] [nvarchar](250) NULL,
	[LinkAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[LoaiTaiKhoan] [int] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTucs]    Script Date: 8/28/2023 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTucs](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[MoTa] [nvarchar](250) NULL,
	[NgayTao] [datetime] NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CaiDats] ([Id], [Logo], [GioLamViec], [GiaoHang], [HoanTien], [SDTLienHe], [EmailLienHe], [FaceBook], [GooglePlus], [Twiter], [YouTube], [Instargram], [GoogleMap], [MatKhauMail]) VALUES (1, N'/Images/logo.jpg', N'T2- CN: 8.00 - 18.00', N'miễn phí với hóa đơn trên 4.000.000 VNĐ', N'100%30 ngày kể từ khi giao hàng', N'0(123) 456 789', N'info@dothethao.com', N'#', N'#', N'#', N'#', N'#', N'#', N'123456')
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] ON 

INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (4, 3, 1167, 100, N'Cái', CAST(10 AS Decimal(18, 0)), CAST(49500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (5, 3, 1166, 100, N'Tấm', CAST(5 AS Decimal(18, 0)), CAST(39900000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (6, 3, 1166, 100, N'Tấm', CAST(10 AS Decimal(18, 0)), CAST(41800000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (9, 3, 1166, 1, N'Cái', CAST(10 AS Decimal(18, 0)), CAST(418000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (11, 3, 1166, 3, N'Cái', CAST(10 AS Decimal(18, 0)), CAST(1254000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (13, 3, 1166, 1, N'Chiếc', CAST(1 AS Decimal(18, 0)), CAST(383800 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] ON 

INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (1, 1, 1113, 4, CAST(52000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietSanPhams] ON 

INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2033, 1167, 1, N'Không có gì', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2034, 1166, 2, N'zxczxc', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2035, 1165, 1, N'ádasd', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2036, 1164, 4, N'ádas', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2037, 1163, 1, N'ádasd', NULL)
SET IDENTITY_INSERT [dbo].[ChiTietSanPhams] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoans] ON 

INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (1, 1, N'sss', N'dsff', N'0123456789', N'/Images/Avatars/s.png')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (2, 2, N'Nguyễn Hữu Đông', N'Hưng yên', NULL, N'/Images/Avatars/a1.PNG')
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuyenMucs] ON 

INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (31, NULL, N'DỤNG CỤ THỂ THAO', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (32, NULL, N'MÁY TẬP THỂ DỤC', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (33, NULL, N'MÁY TẬP THỂ HÌNH', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (34, NULL, N'XE ĐẠP TẬP THỂ DỤC', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (35, NULL, N'MÁY CHẠY BỘ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (36, NULL, N'DỤNG CỤ VÕ THUẬT', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (37, 35, N'MÁY CHẠY BỘ ĐIỆN', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (38, 35, N'MÁY CHẠY BỘ CƠ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (39, 31, N'BÓNG ĐÁ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (40, 31, N'BÓNG CHUYỀN', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (41, 31, N'CẦU LÔNG', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (42, 31, N'GIÀY DÉP', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (43, 31, N'QUẦN ÁO', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (44, 33, N'GIÀN TẬP TẠ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (45, 33, N'TẠ TAY', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (46, 33, N'DỤNG CỤ THỂ LỰC', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (47, 33, N'GHẾ ĐẨY TẠ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (48, 33, N'BỘ TẬP ĐA NĂNG', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (49, 32, N'MÁY ĐI BỘ TRÊN KHÔNG', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (50, 32, N'XÀ ĐƠN-XÀ KÉP', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (51, 32, N'GHẾ GẬP BỤNG', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1037, NULL, N'LIÊN HỆ', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1038, NULL, N'TÀI KHOẢN CỦA TÔI', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1039, NULL, N'THANH TOÁN & GIAO HÀNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1040, NULL, N'DỊCH VỤ KHÁCH HÀNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1041, 1037, N'Support@Shopdothethao.com', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1042, 1037, N'(800) 0123 456 789', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1043, 1037, N'Address - 1234 - Hưng Yên', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1044, 1038, N'Sitemap', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1045, 1038, N'Chính sách riêng tư', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1046, 1038, N'Tài khoản', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1047, 1038, N'Tìm kiếm nâng cao', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1048, 1038, N'Liên hệ', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1049, 1039, N'Điều khoản sử dụng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1050, 1039, N'Phương thức thanh toán', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1051, 1039, N'Hướng dẫn giao hàng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1052, 1039, N'Địa điểm giao hàng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1053, 1039, N'Thời gian dự kiến giao hàng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1054, 1040, N'Chính sách giao hàng', 1, N'<h2>CH&Iacute;NH S&Aacute;CH GIAO - NHẬN H&Agrave;NG KHI MUA H&Agrave;NG TẠI THỂ THAO T&Agrave;I PH&Aacute;T</h2>

<h3>QUY ĐỊNH CHUNG VỀ GIAO H&Agrave;NG</h3>

<p>- C&Ocirc;NG TY CỔ PHẦN THỂ THAO T&Agrave;I PH&Aacute;T thực hiện dịch vụ b&aacute;n h&agrave;ng &amp; thu tiền tại nh&agrave; tr&ecirc;n to&agrave;n l&atilde;nh thổ Việt Nam.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng<strong>&nbsp;kiểm tra thật kỹ h&agrave;ng ho&aacute;</strong>, đối chiếu sản phẩm với chứng từ, phiếu bảo h&agrave;nh&nbsp;(nếu c&oacute;)&nbsp;trước khi nhận. Trường hợp Qu&yacute; kh&aacute;ch nhờ người th&acirc;n nhận h&agrave;ng, th&igrave; vẫn cần kiểm tra h&agrave;ng kỹ trước khi nhận. Sau khi đ&atilde; giao h&agrave;ng th&agrave;nh c&ocirc;ng, THỂ THAO T&Agrave;I PH&Aacute;T chỉ chịu tr&aacute;ch nhiệm nếu xảy ra lỗi kỹ thuật do nh&agrave; sản xuất&nbsp;(theo quy định&nbsp;Đổi/Trả h&agrave;ng&nbsp;v&agrave; Quy định&nbsp;Bảo h&agrave;nh), mọi trường hợp kh&aacute;c sẽ kh&ocirc;ng thuộc tr&aacute;ch nhiệm của ch&uacute;ng t&ocirc;i.</p>

<p>- Qu&yacute; kh&aacute;ch lưu &yacute;:<strong>&nbsp;Tất cả c&aacute;c sản phẩm THỂ THAO T&Agrave;I PH&Aacute;T b&aacute;n ra đều c&oacute; đầy đủ chứng từ như</strong>: H&oacute;a đơn b&aacute;n h&agrave;ng; hoặc&nbsp;(v&agrave;)&nbsp;Phiếu giao h&agrave;ng; hoặc&nbsp;(v&agrave;)&nbsp;Bi&ecirc;n bản giao h&agrave;ng; hoặc&nbsp;(v&agrave;)&nbsp;H&oacute;a đơn t&agrave;i ch&iacute;nh&nbsp;(nếu kh&aacute;ch h&agrave;ng y&ecirc;u cầu). Do vậy kh&aacute;ch h&agrave;ng c&oacute; quyền từ chối nhận h&agrave;ng khi kh&ocirc;ng c&oacute; 1 trong 4 loại chứng từ tr&ecirc;n, việc n&agrave;y nhằm đảm bảo chất lượng sản phẩm, mua đ&uacute;ng h&agrave;ng của THỂ THAO T&Agrave;I PH&Aacute;T, đồng thời đảm bảo quyền lợi của Qu&yacute; kh&aacute;ch trong việc Đổi/Trả h&agrave;ng.</p>

<p>- Thời gian giao h&agrave;ng c&oacute; thể chậm hơn dự kiến v&igrave; một số l&yacute; do như: Địa chỉ kh&aacute;ch h&agrave;ng kh&ocirc;ng đ&uacute;ng, Kh&aacute;ch h&agrave;ng kh&ocirc;ng c&oacute; ở nh&agrave;, Nh&acirc;n vi&ecirc;n giao h&agrave;ng kh&ocirc;ng li&ecirc;n hệ được với kh&aacute;ch h&agrave;ng, thi&ecirc;n tai, hỏa hoạn,... Nếu v&igrave; l&yacute; do của THỂ THAO T&Agrave;I PH&Aacute;T, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để sắp xếp lại thời gian giao h&agrave;ng sau.</p>

<p>- Trường hợp đ&atilde; qu&aacute; số thời gian dự kiến m&agrave; kh&aacute;ch h&agrave;ng chưa nhận được h&agrave;ng, vui l&ograve;ng phản hồi lại để ch&uacute;ng t&ocirc;i khắc phục nhanh nhất. Trong thời gian chờ h&agrave;ng nếu Qu&yacute; kh&aacute;ch muốn thay đổi đơn h&agrave;ng (Thay đổi sản phẩm, Kh&ocirc;ng muốn nhận h&agrave;ng nữa,...) m&agrave; b&ecirc;n dịch vụ chưa ph&aacute;t, kh&aacute;ch h&agrave;ng vui l&ograve;ng th&ocirc;ng b&aacute;o lại cho ch&uacute;ng t&ocirc;i để ch&uacute;ng t&ocirc;i giải quyết với b&ecirc;n dịch vụ chuyển ph&aacute;t.</p>

<p>Hiện ch&uacute;ng t&ocirc;i đang c&oacute; c&aacute;c h&igrave;nh thức giao h&agrave;ng như sau:</p>

<h3>1. Phạm vi &aacute;p dụng</h3>

<p><strong>-&nbsp;</strong><strong>Đối tượng &aacute;p dụng:</strong>&nbsp;Tất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại&nbsp;<strong>HỆ THỐNG SI&Ecirc;U THỊ THỂ THAO T&Agrave;I PH&Aacute;T (tại tất cả chi nh&aacute;nh T&agrave;i Ph&aacute;t tr&ecirc;n to&agrave;n quốc)</strong></p>

<p>&nbsp;</p>

<p><strong>-&nbsp;Khu vực &aacute;p dụng:&nbsp;</strong>Giao nhận&nbsp;MIỄN PH&Iacute;&nbsp;c&aacute;c quận nội th&agrave;nh th&agrave;nh phố H&agrave; Nội, huyện Từ Li&ecirc;m, c&aacute;c quận nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</p>

<h3>2. Nhận h&agrave;ng trực tiếp tại Thể Thao T&agrave;i Ph&aacute;t</h3>

<p>- Với những kh&aacute;ch h&agrave;ng đến mua h&agrave;ng tại c&ocirc;ng ty v&agrave; chi nh&aacute;nh của C&ocirc;ng ty cổ phần thể thao T&agrave;i Ph&aacute;t, Qu&yacute; kh&aacute;ch sẽ nhận h&agrave;ng trực tiếp tại cửa h&agrave;ng của c&ocirc;ng ty v&agrave; c&aacute;c chi nh&aacute;nh.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng kiểm tra thật kỹ h&agrave;ng ho&aacute;, đối chiếu sản phẩm với chứng từ, phiếu bảo h&agrave;nh (nếu c&oacute;) trước khi nhận.</p>

<p>- Qu&yacute; kh&aacute;ch sẽ được nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng cung cấp đầy đủ chứng từ H&oacute;a đơn b&aacute;n h&agrave;ng; hoặc&nbsp;(v&agrave;)&nbsp;H&oacute;a đơn t&agrave;i ch&iacute;nh&nbsp;(nếu kh&aacute;ch h&agrave;ng y&ecirc;u cầu). Qu&yacute; kh&aacute;ch c&oacute; quyền y&ecirc;u cầu nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng cung cấp chứng từ nếu chưa cung cấp kịp thời.</p>

<h3>3. Nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t giao h&agrave;ng tại nh&agrave; kh&aacute;ch h&agrave;ng</h3>

<p>- Với những kh&aacute;ch h&agrave;ng thuộc khu vực<strong>&nbsp;nội th&agrave;nh Tp. H&agrave; Nội</strong>&nbsp;v&agrave;&nbsp;<strong>Tp. Hồ Ch&iacute; Minh</strong>, nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t sẽ giao h&agrave;ng tại nh&agrave; Qu&yacute; kh&aacute;ch&nbsp;(nếu c&oacute; y&ecirc;u cầu).</p>

<p>- Một số trường hợp kh&aacute;ch h&agrave;ng đặt mua sản phẩm<strong>&nbsp;</strong>cần lắp đặt v&agrave; gi&aacute; trị lớn v&agrave; c&oacute; địa chỉ ở c&aacute;c tỉnh l&acirc;n cận xa Tp. H&agrave; Nội v&agrave; Tp. Hồ Ch&iacute; Minh,&nbsp;nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t sẽ giao h&agrave;ng tại nh&agrave; Qu&yacute; kh&aacute;ch&nbsp;(nếu c&oacute; y&ecirc;u cầu).</p>

<p>- Th&ocirc;ng thường kh&aacute;ch h&agrave;ng đặt h&agrave;ng trong ng&agrave;y th&igrave; sẽ nhận được h&agrave;ng trong c&ugrave;ng ng&agrave;y, nếu đặt h&agrave;ng v&agrave;o cuối giờ chiều th&igrave; sẽ nhận được h&agrave;ng v&agrave;o ng&agrave;y h&ocirc;m sau.</p>

<p>- Bộ phận Giao vận sẽ li&ecirc;n lạc trước để Qu&yacute; kh&aacute;ch sắp xếp thời gian, địa điểm cụ thể để giao h&agrave;ng cho Qu&yacute; kh&aacute;ch.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng trực tiếp<strong>&nbsp;kiểm tra kỹ h&agrave;ng ho&aacute; ngay khi nhận h&agrave;ng&nbsp;</strong>từ nh&acirc;n vi&ecirc;n giao h&agrave;ng, nếu c&oacute; vấn đề li&ecirc;n quan tới chủng loại, mẫu m&atilde;, chất lượng, số lượng h&agrave;ng ho&aacute; kh&ocirc;ng đ&uacute;ng như trong đơn đặt h&agrave;ng, Qu&yacute; kh&aacute;ch cần b&aacute;o ngay cho ch&uacute;ng t&ocirc;i để phối hợp xử l&yacute;. Nếu kh&ocirc;ng c&oacute; bất cứ vấn đề g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng nhận h&agrave;ng v&agrave; k&yacute; phiếu giao h&agrave;ng.</p>

<p>- Qu&yacute; kh&aacute;ch nhận h&agrave;ng, k&yacute; v&agrave;o phiếu giao h&agrave;ng v&agrave; thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao nhận to&agrave;n bộ hoặc một phần&nbsp;(nếu đ&atilde; đặt cọc)&nbsp;gi&aacute; trị h&agrave;ng h&oacute;a đ&atilde; mua&nbsp;(bao gồm&nbsp;<strong>gi&aacute; trị tiền h&agrave;ng&nbsp;</strong>+<strong>&nbsp;ph&iacute; vận chuyển</strong>&nbsp;(nếu c&oacute;) +&nbsp;<strong>ph&iacute; lắp đặt&nbsp;</strong>(nếu c&oacute;)).</p>

<p>- Trường hợp h&agrave;ng h&oacute;a phải chuyển từ kho chứa h&agrave;ng ở xa về kho tại c&ocirc;ng ty v&agrave; chi nh&aacute;nh của Thể Thao T&agrave;i Ph&aacute;t, nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để thương thảo lại về thời gian giao h&agrave;ng.</p>

<p>- Trường hợp v&igrave; một l&yacute; do n&agrave;o đ&oacute; nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t kh&ocirc;ng thể giao h&agrave;ng kịp thời th&igrave; ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ lại v&agrave; th&ocirc;ng b&aacute;o cho Qu&yacute; kh&aacute;ch được biết.</p>

<h3>4. Nh&acirc;n vi&ecirc;n chuyển ph&aacute;t giao h&agrave;ng tại nh&agrave; kh&aacute;ch h&agrave;ng</h3>

<p>- Với những kh&aacute;ch h&agrave;ng thuộc c&aacute;c huyện tỉnh ở xa, trường hợp nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t kh&ocirc;ng thể giao h&agrave;ng được,<strong>&nbsp;Thể Thao T&agrave;i Ph&aacute;t sẽ ủy quyền cho 1 số đơn vị chuyển ph&aacute;t&nbsp;</strong>như VNPT, Viettel, hoặc 1 số đơn vị chuyển ph&aacute;t c&oacute; uy t&iacute;n kh&aacute;c.</p>

<p>- Khi đặt h&agrave;ng, Qu&yacute; kh&aacute;ch vui l&ograve;ng điền đầy đủ v&agrave; ch&iacute;nh x&aacute;c c&aacute;c th&ocirc;ng tin cần thiết theo y&ecirc;u cầu để tạo điều kiện thuận lợi cho ch&uacute;ng t&ocirc;i trong việc cung cấp h&agrave;ng h&oacute;a v&agrave; nhận thanh to&aacute;n nhanh ch&oacute;ng. Ch&uacute;ng t&ocirc;i cũng kh&ocirc;ng chịu tr&aacute;ch nhiệm đối với những trường hợp giao h&agrave;ng chậm trễ hay thất lạc v&igrave; c&aacute;c th&ocirc;ng tin do Qu&yacute; kh&aacute;ch cung cấp kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>

<p>- Thời gian giao h&agrave;ng t&ugrave;y thuộc v&agrave;o Qu&yacute; kh&aacute;ch lựa chọn chuyển ph&aacute;t nhanh hay chuyển ph&aacute;t thường, thời gian n&agrave;y chỉ mang t&iacute;nh chất tương đối.</p>

<ul>
	<li>Chuyển ph&aacute;t nhanh: Từ&nbsp;<strong>2</strong>&nbsp;đến&nbsp;<strong>3</strong>&nbsp;ng&agrave;y,</li>
	<li>Chuyển ph&aacute;t thường: Từ&nbsp;<strong>5</strong>&nbsp;đến&nbsp;<strong>10</strong>&nbsp;ng&agrave;y</li>
</ul>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng<strong>&nbsp;kiểm tra kỹ h&agrave;ng ho&aacute; ngay khi nhận h&agrave;ng</strong>&nbsp;từ người chuyển ph&aacute;t h&agrave;ng ho&aacute;, nếu c&oacute; vấn đề li&ecirc;n quan tới chủng loại, chất lượng, số lượng h&agrave;ng ho&aacute; kh&ocirc;ng đ&uacute;ng như trong đơn đặt h&agrave;ng, Qu&yacute; kh&aacute;ch cần b&aacute;o ngay cho ch&uacute;ng t&ocirc;i để phối hợp với đơn vị chuyển ph&aacute;t h&agrave;ng h&oacute;a xử l&yacute;.</p>

<h3>5. Giao h&agrave;ng qua xe chở kh&aacute;ch (nh&agrave; xe) tại c&aacute;c bến xe.</h3>

<p>- Th&ocirc;ng thường h&igrave;nh thức giao h&agrave;ng n&agrave;y sẽ &aacute;p dụng cho kh&aacute;ch h&agrave;ng ở c&aacute;c huyện, tỉnh xa trung t&acirc;m; v&agrave; Qu&yacute; kh&aacute;ch c&oacute; người quen - th&acirc;n, tin cậy v&agrave;o xe kh&aacute;ch.</p>

<p>- Thể Thao T&agrave;i Ph&aacute;t sẽ thực hiện giao h&agrave;ng cho Qu&yacute; kh&aacute;ch<strong>&nbsp;qua xe chở kh&aacute;ch theo đ&uacute;ng y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</strong>.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng cung cấp ch&iacute;nh x&aacute;c th&ocirc;ng tin nh&agrave; xe cho ch&uacute;ng t&ocirc;i: T&ecirc;n nh&agrave; xe (t&ecirc;n xe), Họ t&ecirc;n chủ xe (hoặc l&aacute;i xe, phụ xe), Biển số xe, thời gian xe đến v&agrave; xe đi tại c&aacute;c bến xe,... v&agrave; 1 số th&ocirc;ng tin kh&aacute;c.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n to&agrave;n bộ gi&aacute; trị đơn h&agrave;ng trước khi Thể Thao T&agrave;i Ph&aacute;t chuyển h&agrave;ng hoặc chủ (nh&agrave;) của xe kh&aacute;ch sẽ thanh to&aacute;n to&agrave;n bộ gi&aacute; trị đơn h&agrave;ng trước khi nhận. Đồng thời, Qu&yacute; kh&aacute;ch n&ecirc;n y&ecirc;u cầu chủ xe (người nhận h&agrave;ng từ Thể Thao T&agrave;i Ph&aacute;t) kiểm tra kỹ h&agrave;ng h&oacute;a trước khi nhận.</p>

<p>- Thể Thao T&agrave;i Ph&aacute;t miễn ph&iacute; vận chuyển cho những đơn h&agrave;ng trị gi&aacute; từ&nbsp;<strong>500.000 VNĐ</strong>&nbsp;(Năm trăm ngh&igrave;n đồng chẵn)&nbsp;trở l&ecirc;n từ C&ocirc;ng ty hoặc chi nh&aacute;nh của Thể Thao T&agrave;i Ph&aacute;t đến 1 số bến xe c&oacute;<strong>&nbsp;b&aacute;n k&iacute;nh dưới 15km</strong>&nbsp;(Mười lăm kilomet).</p>

<p>- Tại H&agrave; Nội, miễn ph&iacute; chuyển đến c&aacute;c bến xe:&nbsp;<strong>Bến xe Mỹ Đ&igrave;nh, Gi&aacute;p B&aacute;t, H&agrave; Đ&ocirc;ng, Lương Y&ecirc;n, Nam Thăng Long v&agrave; một số bến xe kh&aacute;c thuộc nội th&agrave;nh Tp. H&agrave; Nội.</strong></p>

<p>- Tại Hồ Ch&iacute; Minh, miễn ph&iacute; đến bến xe như:<strong>&nbsp;Bến xe Miền Đ&ocirc;ng, bến xe Miền T&acirc;y v&agrave; 1 số bến xe kh&aacute;c</strong>.</p>

<h2 style="font-style:inherit">PH&Iacute; GIAO H&Agrave;NG</h2>

<h3>1. Ph&iacute; giao h&agrave;ng cho kh&aacute;ch h&agrave;ng c&oacute; địa chỉ ở c&aacute;c quận nội th&agrave;nh Tp. H&agrave; Nội v&agrave; Tp. Hồ Ch&iacute; Minh.</h3>

<p>- Lưu &yacute;: Ph&iacute; giao h&agrave;ng Kh&ocirc;ng bao gồm phụ ph&iacute;&nbsp;(ph&iacute; lắp đặt...)&nbsp;v&agrave; vận chuyển h&agrave;ng cồng kềnh.</p>

<p>- Với đơn h&agrave;ng trị gi&aacute;<strong>&nbsp;dưới&nbsp;</strong><strong>500.000 VNĐ</strong>&nbsp;(Năm trăm ngh&igrave;n đồng chẵn), Qu&yacute; kh&aacute;ch vui l&ograve;ng trả th&ecirc;m ph&iacute; vận chuyển từ trụ sở Thể Thao T&agrave;i Ph&aacute;t đi trong<strong>&nbsp;nội th&agrave;nh Tp. H&agrave; Nội l&agrave; 10.000 VNĐ</strong>&nbsp;(Mười ngh&igrave;n đồng chẵn); ph&iacute; vận chuyển từ chi nh&aacute;nh trong HCM của Thể Thao T&agrave;i Ph&aacute;t đi trong&nbsp;<strong>Tp. Hồ Ch&iacute; Minh l&agrave; 10.000 VNĐ</strong><strong>&nbsp;</strong>(Mười ngh&igrave;n đồng chẵn).</p>

<p>- Với đơn h&agrave;ng trị gi&aacute; từ 500.000 VNĐ&nbsp;(Năm trăm ngh&igrave;n đồng chẵn)&nbsp;trở l&ecirc;n , Qu&yacute; kh&aacute;ch được&nbsp;<strong>MIỄN PH&Iacute; vận chuyển</strong>.</p>

<p><img alt="Nhân viên Thể Thao Tài Phát giao hàng tận nơi cho Quý khách" src="http://thethaotaiphat.vn/media/lib/giaohang.jpg" style="height:auto; margin:0px auto; width:665px" /></p>

<p>&nbsp;</p>

<p><strong>-&nbsp;Lưu &yacute;: Để biết ch&iacute;nh x&aacute;c hơn qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ với nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng để biết mức ph&iacute; cụ thể cho từng loại h&agrave;ng ở từng khiu vực.</strong></p>

<h3>2. Ph&iacute; giao h&agrave;ng cho kh&aacute;ch h&agrave;ng c&oacute; địa chỉ ở c&aacute;c huyện, tỉnh xa trung t&acirc;m H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh</h3>

<p>- Chi ph&iacute; vận chuyển qua xe chở kh&aacute;ch, Qu&yacute; kh&aacute;ch vui l&ograve;ng trực tiếp li&ecirc;n hệ v&agrave; trả ph&iacute; cho nh&agrave; xe.</p>

<p>- Trường hợp Qu&yacute; kh&aacute;ch y&ecirc;u cầu nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t trực tiếp lắp đặt tại nh&agrave; Qu&yacute; kh&aacute;ch th&igrave; ch&uacute;ng t&ocirc;i sẽ t&iacute;nh&nbsp;<strong>Phụ ph&iacute;&nbsp;</strong>(ph&iacute; lắp đặt,....)&nbsp;theo từng trường hợp khi giao dịch.</p>

<p>- Trong một số trường hợp đặc biệt, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n th&ecirc;m Phụ ph&iacute; khi nh&acirc;n vi&ecirc;n lắp đặt h&agrave;ng h&oacute;a cần mua th&ecirc;m phụ kiện kh&ocirc;ng thuộc của sản phẩm (khoản n&agrave;y c&oacute; thể kh&ocirc;ng được thể hiện trong H&oacute;a đơn b&aacute;n h&agrave;ng).</p>

<p><strong>Lưu &yacute;</strong><strong>: Ph&iacute; vận chuyển v&agrave; khoản phụ ph&iacute; sẽ ch&iacute;nh x&aacute;c hơn khi nh&acirc;n vi&ecirc;n B&aacute;n h&agrave;ng x&aacute;c nhận lại với Qu&yacute; kh&aacute;ch. C&aacute;c khoản ph&iacute; n&agrave;y sẽ được thể hiện tr&ecirc;n H&oacute;a đơn b&aacute;n h&agrave;ng c&ugrave;ng với gi&aacute; trị tiền h&agrave;ng.</strong></p>
')
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1055, 1040, N'Bồi thường', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1056, 1040, N'Tài khoản', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1057, 1040, N'Chính sách trả lại', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1058, 1040, N'Hướng dẫn mua hàng', 1, N'<h2><strong>I/ Hướng dẫn mua h&agrave;ng</strong></h2>

<p><strong>Bước 1</strong>. Qu&yacute; kh&aacute;ch truy cập v&agrave;o website&nbsp;, lựa chọn sản phẩm theo Danh mục - từng ng&agrave;nh sản phẩm hoặc&nbsp;<strong>g&otilde; t&ecirc;n sản phẩm hoặc m&atilde; sản phẩm</strong>&nbsp;(từ kh&oacute;a)&nbsp;<strong>v&agrave;o phần T&igrave;m kiếm.</strong></p>

<p>&nbsp;</p>

<p>&nbsp;Qu&yacute; kh&aacute;ch t&igrave;m kiếm theo t&ecirc;n sản phẩm, hoặc m&atilde; sản phẩm.</p>

<p><strong>Bước 2.</strong>&nbsp;Ngo&agrave;i t&igrave;m kiếm th&igrave; qu&yacute; kh&aacute;ch c&oacute; thể t&igrave;m kiếm sản phẩm trong ph&acirc;n loại danh mục sản phẩm của ch&uacute;ng t&ocirc;i. Trang danh s&aacute;ch sản phẩm theo danh mục sẽ hiện ra, Qu&yacute; kh&aacute;ch c&oacute; thể thoải m&aacute;i t&igrave;m kiếm v&agrave; so s&aacute;nh để lựa chọn được sản phẩm m&agrave; qu&yacute; kh&aacute;ch h&agrave;ng ưng &yacute; nhất.</p>

<p>Khi qu&yacute; kh&aacute;ch h&agrave;ng click v&agrave;o sản phẩm n&agrave;o đ&oacute; th&igrave; trang chi tiết sản phẩm sẽ hiện ra, Qu&yacute; kh&aacute;ch n&ecirc;n đọc kỹ th&ocirc;ng tin về sản phẩm để đảm bảo việc lựa chọn, mua h&agrave;ng được như &yacute;. Ch&uacute;ng t&ocirc;i lu&ocirc;n cập nhật nội dung, h&igrave;nh ảnh sản phẩm ch&iacute;nh x&aacute;c theo th&ocirc;ng tin của nh&agrave; sản xuất cung cấp v&agrave; đ&uacute;ng với thực tế.</p>

<p><strong>Bước 3. Đặt mua sản phẩm</strong></p>

<p><strong>TH1:</strong>&nbsp;Qu&yacute; kh&aacute;ch c&oacute; thể gọi điện trực tiếp đến c&aacute;c số hotline theo từng khu vực để đặt h&agrave;ng hoặc đến trực tiếp địa chỉ của c&aacute;c showroom v&agrave; đặt h&agrave;ng trực tiếp</p>

<p><strong>TH2: Bạn c&oacute; thể đặt h&agrave;ng tr&ecirc;n trang hệ thống trang web của ch&uacute;ng t&ocirc;i</strong></p>

<p>Nếu kh&aacute;ch h&agrave;ng đ&atilde; ưng &yacute; v&agrave; muốn mua ngay sản phẩm n&agrave;y th&igrave; c&oacute; thể nhấp v&agrave;o n&uacute;t &quot;MUA NGAY&quot; ở vị tr&iacute; số 1. Tuy nhi&ecirc;n, qu&yacute; kh&aacute;ch cần x&aacute;c minh trạng th&aacute;i sản phẩm c&ograve;n h&agrave;ng hay hết h&agrave;ng (vị tr&iacute; số 2). Hoặc nếu qu&yacute; kh&aacute;ch n&agrave;o muốn t&igrave;m hiểu th&ecirc;m th&ocirc;ng tin v&agrave; cần tư vấn th&ecirc;m th&igrave; gọi điện cho T&agrave;i Ph&aacute;t theo số HOTLINE:</p>

<p>Trường hợp qu&yacute; kh&aacute;ch muốn chọn th&ecirc;m sản phẩm kh&aacute;c th&igrave; h&atilde;y nhấp &quot;TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG&quot;, khi đ&oacute; ở vị tr&iacute; số 3 trong h&igrave;nh sẽ hiển thị số sản phẩm bạn đ&atilde; th&ecirc;m, bạn chỉ cần di chuột v&agrave;o l&agrave; biết trong giỏ h&agrave;ng của bạn c&oacute; sản phẩm n&agrave;o.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Bước 4</strong>. M&agrave;n h&igrave;nh về th&ocirc;ng tin&nbsp;<strong>Giỏ h&agrave;ng</strong>&nbsp;hiển thị. Qu&yacute; kh&aacute;ch c&oacute; thể kiểm tra lại số lượng v&agrave; t&ecirc;n sản phẩm vừa đặt.</p>

<p>&nbsp;</p>

<p>- Trường hợp Qu&yacute; kh&aacute;ch muốn&nbsp;<strong>đặt mua th&ecirc;m sản phẩm</strong>, Qu&yacute; kh&aacute;ch vui l&ograve;ng lựa chọn theo danh mục sản phẩm hay&nbsp;<strong>T&igrave;m kiếm&nbsp;</strong>v&agrave; thực hiện lại c&aacute;c bước từ 1 đến 3.</p>

<p>Giỏ h&agrave;ng của ch&uacute;ng t&ocirc;i c&oacute; t&iacute;nh năng tự động ghi nhớ sản phẩm đ&atilde; mua v&igrave; vậy sản phẩm m&agrave; qu&yacute; kh&aacute;ch đ&atilde; lựa chọn sẽ được lưu giữ trong giỏ h&agrave;ng của qu&yacute; kh&aacute;ch.</p>

<p>- Trường hợp Qu&yacute; kh&aacute;ch kh&ocirc;ng muốn đặt mua sản phẩm 1 trong số c&aacute;c sản phẩm đ&atilde; đặt, c&oacute; thể k&iacute;ch v&agrave;o n&uacute;t&nbsp;<strong>X&oacute;a&nbsp;</strong>tương ứng với t&ecirc;n sản phẩm đ&oacute;.</p>

<p>L&uacute;c n&agrave;y, qu&yacute; kh&aacute;ch cần điền đầy đủ th&ocirc;ng tin b&ecirc;n cột: &quot;Điền th&ocirc;ng tin kh&aacute;ch h&agrave;ng&quot;. Kiểm tra một lần nữa xem th&ocirc;ng tin qu&yacute; kh&aacute;ch ddienf đ&atilde; đầy đủ v&agrave; ch&iacute;nh x&aacute;c chưa. Sau khi x&aacute;c nhận mọi th&ocirc;ng tin ch&iacute;nh x&aacute;c th&igrave; h&atilde;y nhấn n&uacute;t &quot;X&Aacute;C NHẬN&quot;.</p>

<p>Hệ thống sẽ gửi email v&agrave; SĐT x&aacute;c minh qu&yacute; kh&aacute;ch đ&atilde; đặt h&agrave;ng (SMS x&aacute;c minh đơn đặt h&agrave;ng của qu&yacute; kh&aacute;ch l&agrave; miễn ph&iacute;).</p>

<p><strong>(Qu&yacute; kh&aacute;ch c&oacute; thể thao khảo th&ecirc;m mục Phương thức thanh to&aacute;n v&agrave; ch&iacute;nh s&aacute;ch bảo mật của ch&uacute;ng t&ocirc;i.)</strong></p>

<p>Đơn h&agrave;ng đ&atilde; gửi sẽ được lưu trữ tr&ecirc;n hệ thống website , nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ lại với Qu&yacute; kh&aacute;ch&nbsp;qua điện thoại hoặc email)&nbsp;để x&aacute;c nhận v&agrave; tư vấn trước khi chuyển h&agrave;ng. Đồng thời Qu&yacute; kh&aacute;ch sẽ nhận được email th&ocirc;ng b&aacute;o về đơn h&agrave;ng từ hệ thống , Qu&yacute; kh&aacute;ch c&oacute; thể truy cập v&agrave;o email để kiểm tra lại đơn h&agrave;ng vừa đặt; v&igrave; một l&yacute; do n&agrave;o đ&oacute; Qu&yacute; kh&aacute;ch kh&ocirc;ng nhận được email vui l&ograve;ng kiểm tra th&ecirc;m ở phần&nbsp;Spam&nbsp;hoặc li&ecirc;n hệ lại để ch&uacute;ng t&ocirc;i kiểm tra hệ thống.</p>

<p><strong>LƯU</strong>&nbsp;&Yacute;:&nbsp;Trường hợp qu&yacute; kh&aacute;ch đ&atilde; c&oacute; th&ocirc;ng tin t&agrave;i khoản tr&ecirc;n hệ thống website của ch&uacute;ng t&ocirc;i qu&yacute; kh&aacute;ch c&oacute; thể đăng nhập v&agrave;o t&agrave;i khoản của m&igrave;nh để thuận tiện cho việc mua h&agrave;ng ở những lần tiếp theo.</p>
')
SET IDENTITY_INSERT [dbo].[ChuyenMucs] OFF
GO
SET IDENTITY_INSERT [dbo].[HangSanXuats] ON 

INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (1, N'Adidas', N'http://www.adidas.com.vn/', N'/Images/HangSXs/Adidas.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (2, N'Filla', N'http://www.fila.com/', N'/Images/HangSXs/Fila.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (3, N'Hi-tec', N'http://www.hi-tec.com/', N'/Images/HangSXs/HiTec.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (4, N'Newbalance', N'http://www.newbalance.com/', N'/Images/HangSXs/NewBala.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (5, N'Nike', N'http://www.nike.com/us/en_us/', N'/Images/HangSXs/Nike.jpg')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (6, N'Puma', N'http://puma.com/', N'/Images/HangSXs/Puma.jpg')
SET IDENTITY_INSERT [dbo].[HangSanXuats] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] ON 

INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan]) VALUES (3, 1, CAST(N'2016-12-04T00:00:00.000' AS DateTime), N'Trả tiền trước', NULL)
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDons] ON 

INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [NgayDuyet], [TongGia], [TenKH], [GioiTinh], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [ThoiGianGiaoHang]) VALUES (1, 0, CAST(N'2016-05-21T09:54:25.963' AS DateTime), NULL, CAST(52000000 AS Decimal(18, 0)), N'trịnh quang trung', 0, N'luong bag', N'trinhquangtrung375@gmail.com', N'09666226444', N'kimdong', CAST(N'2016-05-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[HoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHangs] ON 

INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (0, N'Admin Nova', 0, N'HÀ NỘI', N'012345678', N'shopthethaonova@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (1, N'ưerwer', 0, N'ưerewr', N'2434', N'ưerewrewr')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (2, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (3, N'sdfdsf', 0, N'sdfdf', N'324234234', N'sdfsdfsdf@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (4, N'trịnh quang trung', 0, N'luong bag', N'09666226444', N'trinhquangtrung375@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHangs] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] ON 

INSERT [dbo].[LoaiTaiKhoans] ([MaLoai], [TenLoai], [MoTa]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[LoaiTaiKhoans] ([MaLoai], [TenLoai], [MoTa]) VALUES (2, N'KhachHang', NULL)
INSERT [dbo].[LoaiTaiKhoans] ([MaLoai], [TenLoai], [MoTa]) VALUES (3, N'QuanLy', NULL)
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] ON 

INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (1, N'Tuấn Vũ Sport', N'Trịnh Hoài Đức, Hà Nội', N'0123456789', N'000912124', N'Phân phối đồ dùng võ thuật')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (2, N'Tài Phát Sport', N'Ba Đình, Hà Nội', N'12341241241', N'086812468', N'Phân phối máy tập')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (3, N'Sendo', N'TPHCM', N'01237812384', N'098912777', N'Phân phối quần áo thể thao')
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] OFF
GO
SET IDENTITY_INSERT [dbo].[QuangCaos] ON 

INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (1, N'/Images/QuangCao/banner_072b030b.jpg', NULL, NULL)
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (2, N'/Images/QuangCao/tap-dung-bung-dung-cach.png', NULL, NULL)
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (3, N'/Images/QuangCao/176-kfx1297859199.jpg', NULL, NULL)
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (4, N'/Images/QuangCao/banner_072b030b.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[QuangCaos] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhams] ON 

INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (47, 34, N'Xe đạp thông dụng Fomix', N'/Images/Products/XEDAPFORMIX.jpg', CAST(1990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (48, 34, N'
Xe đạp gấp địa hình 26 inch Fury', N'/Images/Products/f93dfb_simg_b5529c_250x250_maxb.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 2, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (49, 34, N'
XE ĐẠP ĐUA KHUNG SƯỜN NHÔM', N'/Images/Products/444737_simg_b5529c_250x250_maxb.jpg', CAST(3760000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (50, 34, N'
Xe đạp Fixed Gear BF200', N'/Images/Products/6a24a4_simg_b5529c_250x250_maxb.jpg', CAST(2380000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 198, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (51, 34, N'
Xe địa hình Fornix', N'/Images/Products/a753a2_simg_0f3fd7_1181-1181-356-0_cropf_simg_b5529c_250x250_maxb.JPG', CAST(5480000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (52, 34, N'
Xe đạp đua Fury khung nhôm BT401', N'/Images/Products/83495f_simg_b5529c_250x250_maxb.jpg', CAST(3760000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (53, 34, N'XE ĐẠP TRẺ EM USA HUFFY JAZZMIN 20 - #23035Y', N'/Images/Products/277757_simg_b5529c_250x250_maxb.jpg', CAST(2990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (54, 34, N'
Xe Đạp Thể Thao SuperCycles', N'/Images/Products/3f2cd1_simg_b5529c_250x250_maxb.JPG', CAST(1990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (55, 37, N'Máy chạy bộ điện đa năng MHT-400', N'/Images/Products/1090_may_cay_bo_dien_da_nang_mht_400.JPG', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (56, 37, N'Máy chạy bộ điện đa năng MHT-1809AD', N'/Images/Products/250_530_may_chay_bo_dien_mh_1809ad.jpg', CAST(15990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (57, 37, N'Máy chạy bộ điện OMA-1610CA', N'/Images/Products/250_885_1910.jpg', CAST(15800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (58, 37, N'Máy chạy bộ điện đa năng 8018', N'/Images/Products/250_1168_may_chay_bo_dien_8018_9.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (59, 38, N'Máy tập chạy bộ cơ KL-9835', N'/Images/Products/250_151_may_tap_chay_bo_co_kl_9835.jpg', CAST(2890000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (60, 38, N'Máy chạy bộ cơ KL-9938', N'/Images/Products/250_835_may_chay_bo_co_kl_9938.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (61, 38, N'Máy chạy bộ cơ DL-916', N'/Images/Products/250_585_may_tap_chay_bo_co_kl_805_3_.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (62, 38, N'Máy chạy bộ cơ đa năng động lực KL 9919 (DL-0020)', N'/Images/Products/250_153_may_chay_bo_co_kl9919.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (63, 39, N'Quả bóng đá CB 4.114', N'/Images/Products/250_931_901_qua_bong_da_ucv_4_114.jpg', CAST(220000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (64, 39, N'Quả bóng đá Fus 2.76', N'/Images/Products/250_930_qua_bong_da_futsal_fus_2_76.PNG', CAST(270000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (65, 39, N'Quả bóng đá may số 2 Euro 2012', N'/Images/Products/250_928_qua_bong_da_may_so_2_euro_2012.PNG', CAST(100000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (66, 39, N'Quả bóng đá số 4 may không In D', N'/Images/Products/250_924_qua_bong_da_may_so_4_may_khong_in_d.PNG', CAST(100000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (67, 39, N'Quả bóng đá CM 5.21', N'/Images/Products/250_918_qua_bong_da_cm_5_21.jpg', CAST(120000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (68, 40, N'Quả bóng chuyền DL 200', N'/Images/Products/250_935_qua_bong_chuyen_dl_200.PNG', CAST(105000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (69, 40, N'Quả bóng chuyền DL 240M3', N'/Images/Products/250_934_qua_bong_chuyen_ebete_dl_240m3.PNG', CAST(140000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (70, 40, N'Quả bóng chuyền DL 220C', N'/Images/Products/250_933_qua_bong_chuyen_dl_220c.PNG', CAST(190000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (71, 40, N'Quả bóng chuyền DL 210M3', N'/Images/Products/250_932_qua_bong_chuyen_dl_210m3.PNG', CAST(210000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (72, 40, N'Quả bóng chuyền DL210C', N'/Images/Products/250_929_qua_bong_chuyen_hunter_dl210c_1.PNG', CAST(200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (73, 41, N'VỢT CẦU LÔNG FORZA MEGA SPEED 77', N'/Images/Products/250_805_vot_cau_long_speed_77.jpg', CAST(720000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (74, 41, N'VỢT CẦU LÔNG BABOLAT SATELITE ', N'/Images/Products/250_804_vot_cau_long_6_0_life1.jpg', CAST(1200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (75, 41, N'VỢT CẦU LÔNG FORZA NANO FLEX ', N'/Images/Products/250_803_vot_cau_long_forza_nano_flex_7800.jpg', CAST(1200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (76, 41, N'CỘT CẦU LÔNG DI ĐỘNG', N'/Images/Products/250_1146_cot_cau_long_di_dong.PNG', CAST(1800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (77, 41, N'MÁY CĂNG VỢT CẦU LÔNG 6 CHẤU', N'/Images/Products/250_802_may_cang_vot_6_chau_ban_xoay.jpg', CAST(22000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (78, 42, N'GIÀY ĐÁ BÓNG TF NIKE 415130-108', N'/Images/Products/250_219_giay_da_bong_tf_nike_415130_108.jpg', CAST(1161000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (79, 42, N'GIÀY BÓNG ĐÁ TF NIKE 509089-105', N'/Images/Products/250_218_giay_bong_da_tf_nike_509089_105.jpg', CAST(1270000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (80, 42, N'GIÀY RUNNING NIKE NAM 555337-440', N'/Images/Products/250_204_giay_the_thao_nike.jpg', CAST(3133000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (81, 42, N'GIÀY BÓNG ĐÁ NIKE 472560-808', N'/Images/Products/250_215_giay_bong_da_nike_472560_808.jpg', CAST(1300000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (82, 42, N'GIÀY BÓNG ĐÁ NIKE 580444-800', N'/Images/Products/250_212_giay_bong_da_nike_580444_800.jpg', CAST(2600000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (83, 43, N'
Sét bộ thể thao thời trang cực kool...!
', N'/Images/Products/148006_simg_5d7c3f_790-790-0-0_cropf_simg_b5529c_250x250_maxb.jpg', CAST(205000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (84, 43, N'
Bộ đồ thể thao nam ngôi sao', N'/Images/Products/96874d_simg_b5529c_250x250_maxb.jpg', CAST(185000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (85, 43, N'
Bộ đồ thể thao nam BS05', N'/Images/Products/bothudongnam_2kg5dg7r75gmf_simg_b5529c_250x250_maxb.jpg', CAST(350000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (86, 43, N'
Sét đồ tập gym nam mới nhất BS04A', N'/Images/Products/a65449_simg_b5529c_250x250_maxb.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (87, 43, N'
Bộ quần áo thể thao đẹp cho nam B', N'/Images/Products/443496_simg_b5529c_250x250_maxb.jpg', CAST(295000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1086, 37, N'Máy chạy bộ điện đa năng MHT-400', N'/Images/Products/1090_may_cay_bo_dien_da_nang_mht_400.JPG', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1087, 37, N'Máy chạy bộ điện đa năng MHT-1809AD', N'/Images/Products/250_530_may_chay_bo_dien_mh_1809ad.jpg', CAST(15990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1088, 37, N'Máy chạy bộ điện OMA-1610CA', N'/Images/Products/250_885_1910.jpg', CAST(15800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1089, 37, N'Máy chạy bộ điện đa năng 8018', N'/Images/Products/250_1168_may_chay_bo_dien_8018_9.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1090, 38, N'Máy tập chạy bộ cơ KL-9835', N'/Images/Products/250_151_may_tap_chay_bo_co_kl_9835.jpg', CAST(2890000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1091, 38, N'Máy chạy bộ cơ KL-9938', N'/Images/Products/250_835_may_chay_bo_co_kl_9938.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1092, 38, N'Máy chạy bộ cơ DL-916', N'/Images/Products/250_585_may_tap_chay_bo_co_kl_805_3_.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1093, 38, N'Máy chạy bộ cơ đa năng động lực KL 9919 (DL-0020)', N'/Images/Products/250_153_may_chay_bo_co_kl9919.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1094, 37, N'Máy chạy bộ điện đa năng MHT-400', N'/Images/Products/1090_may_cay_bo_dien_da_nang_mht_400.JPG', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1095, 37, N'Máy chạy bộ điện đa năng MHT-1809AD', N'/Images/Products/250_530_may_chay_bo_dien_mh_1809ad.jpg', CAST(15990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1096, 37, N'Máy chạy bộ điện OMA-1610CA', N'/Images/Products/250_885_1910.jpg', CAST(15800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1097, 37, N'Máy chạy bộ điện đa năng 8018', N'/Images/Products/250_1168_may_chay_bo_dien_8018_9.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1098, 38, N'Máy tập chạy bộ cơ KL-9835', N'/Images/Products/250_151_may_tap_chay_bo_co_kl_9835.jpg', CAST(2890000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1099, 38, N'Máy chạy bộ cơ KL-9938', N'/Images/Products/250_835_may_chay_bo_co_kl_9938.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1100, 38, N'Máy chạy bộ cơ DL-916', N'/Images/Products/250_585_may_tap_chay_bo_co_kl_805_3_.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1101, 38, N'Máy chạy bộ cơ đa năng động lực KL 9919 (DL-0020)', N'/Images/Products/250_153_may_chay_bo_co_kl9919.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1102, 50, N'Xà đơn treo tường', N'/Images/Products/685_xa_don_treo_tuong_2.jpg', CAST(330000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1103, 50, N'XÀ ĐƠN XẾP LOẠI NHỎ 601921', N'/Images/Products/250_596_xa_don_xep_duc_long.jpg', CAST(1590000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1104, 50, N'XÀ ĐƠN ĐA NĂNG IRON GYM-1557A', N'/Images/Products/250_684_xa_don_iron_1557a.jpg', CAST(550000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1105, 50, N'XÀ ĐƠN ĐA NĂNG HANWEI 881', N'/Images/Products/250_683_xa_don_da_nang_hanwei_881.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1106, 50, N'XÀ KÉP ĐIỀU CHỈNH ĐỘ CAO MF1925', N'/Images/Products/250_459_xa_kep_dieu_chinh_do_cao_mf1925.jpg', CAST(10590000 AS Decimal(18, 0)), CAST(9590000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1107, 50, N'XÀ ĐƠN ĐA NĂNG LIFE 100', N'/Images/Products/250_681_xa_don_da_nang_life_100.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1108, 50, N'XÀ KÉP TIÊU CHUẨN', N'/Images/Products/250_680_xa_kep_tieu_chuan.jpg', CAST(13300000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1109, 50, N'XÀ ĐƠN ĐA NĂNG 1557B', N'/Images/Products/250_687_xa_don_da_nang_1557b.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1110, 50, N'XÀ KÉP TRONG NHÀ ĐỨC LONG', N'/Images/Products/250_1139_xa_kep_trong_nha.PNG', CAST(15900000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1111, 49, N'MÁY TẬP ĐI BỘ TRÊN KHÔNG GAZELLE ', N'/Images/Products/250_565_may_chay_bo_tren_khong_edge.jpg', CAST(19000000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1112, 49, N'MÁY CHẠY BỘ TRÊN KHÔNG XUKI', N'/Images/Products/250_563_may_chay_bo_tren_khong_tk_04.jpg', CAST(19000000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1113, 49, N'MÁY CHẠY BỘ TRÊN KHÔNG TECH FITNESS', N'/Images/Products/250_562_may_chay_bo_tren_khong_elip_02.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(13000000 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1114, 51, N'GHẾ CONG TẬP BỤNG 601002 (BEN2)', N'/Images/Products/250_178_002_1.jpg', CAST(16400000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1115, 51, N'GHẾ TẬP CƠ BỤNG BEN PRO 601003', N'/Images/Products/250_176_ghe_cong_tap_bung_ben_pro.jpg', CAST(12500000 AS Decimal(18, 0)), CAST(10000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1116, 51, N'GHẾ CONG TẬP BỤNG EBETE CJH-103AR', N'/Images/Products/250_840_ghe_cong_tap_bung_ebete.jpg', CAST(19450000 AS Decimal(18, 0)), CAST(17000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1117, 51, N'GHẾ CONG TẬP BỤNG DL-2640', N'/Images/Products/250_839_ghe_cong_tap_bung_dl2640.jpg', CAST(19400000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1118, 51, N'GHẾ CONG TẬP BỤNG DL-961', N'/Images/Products/250_838_ghe_cong_tap_bung_dl_961.jpg', CAST(15400000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1119, 51, N'GHẾ CONG TẬP LƯNG BỤNG AB TRAINER ', N'/Images/Products/250_608_ghe_cong_tap_lung_bung_601021.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(13000000 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1120, 51, N'GHẾ CONG CƠ BỤNG XUKI KHÔNG CÀNG', N'/Images/Products/250_576_ghe_cong_bung_xuki_khong_cang.jpg', CAST(12400000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1121, 51, N'GHẾ CONG TẬP CƠ BỤNG XUKI CÓ CÀNG', N'/Images/Products/250_175_ban_cong_ghe_cong_tap_bung_xuki_co_cang.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1122, 44, N'GIÀN TẬP TẠ ĐA NĂNG GM 8130', N'/Images/Products/250_234_gian_ta_da_nang_gm_8130.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1123, 44, N'DÀN TẠ ĐA NĂNG 3001F', N'/Images/Products/250_733_dan_ta_da_nang_3001f.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1124, 44, N'GIÀN TẠ ĐA NĂNGTITAN WT-H63', N'/Images/Products/250_992_gian_ta_da_nang_titan_wt_h63_2.PNG', CAST(35500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1125, 44, N'DÀN TẠ ĐA NĂNG 7201A', N'/Images/Products/250_231_dan_tap_ta_da_nang_7201a.jpg', CAST(18550000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1126, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H66', N'/Images/Products/250_989_gian_ta_da_nang_titan_wt_h66.PNG', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1127, 44, N'DÀN TẠ ĐA NĂNG KFHG-22', N'/Images/Products/250_844_gian_tap_ta_da_nang_kfhg_22.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1128, 44, N'GIÀN TẬP TẠ ĐA NĂNG GM 6550', N'/Images/Products/250_236_gian_tap_ta_da_nang_gm_6550_1.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1129, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H83', N'/Images/Products/250_880_gian_ta_da_nang_3_vi_tri_tap_wth83.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1130, 44, N'DÀN TẠ ĐA NĂNG 3001C', N'/Images/Products/250_734_3001c.jpg', CAST(15500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1131, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H68', N'/Images/Products/250_988_gian_ta_da_nang_wt_h68__1.PNG', CAST(15500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1132, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H88', N'/Images/Products/250_991_gian_ta_da_nang_titan_wt_h88.PNG', CAST(14500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1133, 44, N'GIÀN TẠ ĐA NĂNG TITAN WT-H53', N'/Images/Products/250_990_gian_ta_da_nang_titan_wt_h53.PNG', CAST(8500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1134, 44, N'MÁY TẬP GYM DL-2617
', N'/Images/Products/250_850_may_tap_gym_dl_2617.jpg', CAST(175500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1135, 44, N'MÁY TẬP GYM DL-2616', N'/Images/Products/250_849_may_tap_gym_dl_2616.jpg', CAST(15500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1136, 44, N'MÁY TẬP GYM DL-2614
2', N'/Images/Products/250_848_may_tap_gym_dl_2614.jpg', CAST(185500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1137, 44, N'DÀN TẬP TẠ ĐA NĂNG KFHG-12', N'/Images/Products/250_842_gian_tap_ta_da_nang_kfhg_12.jpg', CAST(135500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1138, 47, N'GHẾ TẠ ĐA NĂNG VIFASPORT 601250', N'/Images/Products/250_878_ghe_ta_da_nang_601250.JPG', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1139, 47, N'GHẾ TẬP TẠ ĐA NĂNG DL-0942A', N'/Images/Products/250_841_ghe_day_ta_dl0942a.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1140, 47, N'GIÀN TẬP TẠ ĐA NĂNG TÀI PHÁT TP-52', N'/Images/Products/250_250_gian_ta_da_nang_601501_ben501.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1141, 47, N'GHẾ TẬP TẠ ĐA NĂNG XUKI', N'/Images/Products/250_248_gian_ta_da_nang_xuki.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1142, 47, N'GHẾ TẬP TẠ ĐA NĂNG BEN 501B (601521)', N'/Images/Products/250_455_ghe_tap_multy_ben_501b_601521.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1143, 47, N'GHẾ TẠ ĐA NĂNG BEN 502 (601502)', N'/Images/Products/250_339_ghe_tap_ta_da_nang_ben_502.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
GO
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1144, 47, N'GHẾ TẠ ĐA NĂNG BEN 401', N'/Images/Products/250_247_ghe_ta_da_nang_ben_401.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1145, 47, N'GHẾ ĐẨY TẠ SP 301-1', N'/Images/Products/250_753_ghe_day_ta_301_1.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1146, 47, N'GIÀN TẠ NẰM LIFE-7208', N'/Images/Products/250_888_gian_ta_nam_life_7208.JPG', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1147, 47, N'GHẾ TẬP TẠ ĐA NĂNG ADIDAS ADBE-10237', N'/Images/Products/250_752_ghe_tap_ta_da_nang_adidas_adbe_10237.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1148, 45, N'TẠ TAY BROSMAN', N'/Images/Products/250_1205_ta_tay_brosman.JPG', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1149, 45, N'TẠ TAY LỤC GIÁC 2,5KG', N'/Images/Products/250_543_ta_tay_adwt_10342.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1150, 45, N'TẠ BÌNH 5KG REEBOK RAWT-18005YL', N'/Images/Products/250_540__rawt_ta_bing_18005yl.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1151, 45, N'BỘ TẠ TAY 12 KG REEBOK', N'/Images/Products/250_434_tatay12kgrawt_11056.jpeg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1152, 45, N'TẠ TAY BỌC MÚT REEBOK', N'/Images/Products/250_255_ta_tay_boc_mut_rawt_11060mg.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1153, 45, N'BỘ TẠ TAY REEBOK 6KG', N'/Images/Products/250_254_bo_ta_tay_6kg.jpg', CAST(1245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1154, 45, N'TẠ TAY REEBOK', N'/Images/Products/250_252_ta_tay.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 2, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1155, 45, N'TẠ TAY CAO SU 10KG ADWT-10322', N'/Images/Products/250_4_ta_tay_cao_su_10kg.jpg', CAST(1245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1156, 46, N'KHUNG BOXING 601973 (S1973)', N'/Images/Products/250_190_601973.jpg', CAST(3250000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), 200, 1, 2, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1157, 46, N'KHUNG BOXING S1973', N'/Images/Products/250_458_khung_tap_boxing.jpg', CAST(3250000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1158, 46, N'BAO BOXING 4 FEET RABX-11245', N'/Images/Products/250_440_bao_dam_rabx_11245.jpg', CAST(2850000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1159, 36, N'Đích đá đơn Kangrui', N'/Images/Products/250_190_dich_da_don_kangrui.jpg', CAST(165000 AS Decimal(18, 0)), CAST(125000 AS Decimal(18, 0)), 200, 1, 28, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1160, 36, N'Đích đá đơn Kangrui', N'/Images/Products/250_190_dich_da_don_kangrui.jpg', CAST(165000 AS Decimal(18, 0)), CAST(125000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1161, 36, N'Dây kéo tay lò xo', N'/Images/Products/250_221_day_keo_tay_lo_xo.jpg', CAST(125000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), 200, 1, 14, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1162, 36, N'Bóp tay tròn', N'/Images/Products/250_224_bop_tay_tron.jpg', CAST(300000 AS Decimal(18, 0)), CAST(225000 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1163, 36, N'Xe trượt BE01', N'/Images/Products/250_225_xe_truot_be01.jpg', CAST(295000 AS Decimal(18, 0)), CAST(255000 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1164, 36, N'Bao cát đấm bốc', N'/Images/Products/250_983_0_699630.jpg', CAST(350000 AS Decimal(18, 0)), CAST(225000 AS Decimal(18, 0)), 200, 1, 184, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1165, 36, N'Mộc nhân tập võ', N'/Images/Products/250_984_0_image.jpg', CAST(8950000 AS Decimal(18, 0)), CAST(7950000 AS Decimal(18, 0)), 200, 1, 116, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1166, 36, N'Thảm tập võ thuật', N'/Images/Products/250_210_0_tham_tap_vo.jpg', CAST(200000 AS Decimal(18, 0)), CAST(169000 AS Decimal(18, 0)), 150, 1, 6, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (1167, 36, N'Bóng tốc độ tập phản xạ', N'/Images/Products/250_194_bong_toc_do_tap_phan_xa.jpg', CAST(450000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 306, 1, 14, 0)
SET IDENTITY_INSERT [dbo].[SanPhams] OFF
GO
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (47, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (48, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (49, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (50, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (51, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (53, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1166, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1167, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1163, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1164, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1165, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (1166, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (49, 3)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (50, 3)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (51, 3)
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([MaAnh], [TieuDe], [TieuDe1], [TieuDe2], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [LinkAnh]) VALUES (1, N'Máy chạy bộ đa năng', N'Máy chạy bộ đa năng', N'Giảm giá sốc', N'Giảm tới!', N'30% off', N'Tặng kèm đĩa DVD tập cùng với huấn luyện viên', N'Tặng thêm phụ kiện bảo hộ', N'/Images/SlideShows/img-04.jpg')
INSERT [dbo].[Slide] ([MaAnh], [TieuDe], [TieuDe1], [TieuDe2], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [LinkAnh]) VALUES (2, N'Khai trương cửa hàng mới', N'Khai trương cửa hàng mới', N'Giảm giá cực lớn', N'Giảm tới!', N'50% off', NULL, NULL, N'/Images/SlideShows/img-05.jpg')
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoans] ON 

INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (1, 1, N'admin', N'123456', N'shopthethaonova@gmail.com')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (2, 1, N'dongnh', N'123456', N'dongnh@gmail.com')
SET IDENTITY_INSERT [dbo].[TaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTucs] ON 

INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (1, N'Top 4 Premier League: Kịch hay còn trước mắt', N'/Images/TinTuc/Top4Perier.jpg', N' Cục diện top 4 Premier League đã có sự thay đổi đáng kể sau vòng 33. Những cái tên nổi trội như Leicester hay Arsenal đều bị cầm hoà. Trong khi đó, Manchester City lại có chiến thắng tưng bừng trước Chelsea.', CAST(N'2021-11-16T19:49:59.520' AS DateTime), N'Vòng đấu của sự kịch tính

Phải chật vật lắm, Leicester City mới có thể giật lại một điểm từ tay West Ham. Chiếc thẻ đỏ của tiền đạo Jamie Vardy tưởng chừng sẽ chấm dứt chuỗi trận thắng ấn tượng thời gian qua của Bầy cáo. Tuy nhiên, phút loé sáng của tiền đạo Leonardo Ulloa đã giúp Leicester giữ lại King Power một điểm quý giá.


Leicester có trận hoà quan trọng trước West Ham. Ảnh: Internet.
Trong khi đó, Arsenal không thể có chiến thắng thứ 7 liên tiếp trước Crystal Palace khi bị đội bóng này cầm chân trong những phút cuối trận. Alexis Sanchez là người khai thông thế bế tắc cho Pháo thủ. Tuy nhiên, chính sự lơ là của hàng thủ đã khiến Arsenal phải trả giá bằng bàn thắng của Yannick Bolasie. Trận hoà này đẩy Pháo thủ xuống vị trí thứ 4 của Manchester City, đội vừa có chiến thắng ấn tượng 3-0 trước Chelsea.

Ở một diễn biến khác, cuộc đại chiến giữa Man City và Chelsea tưởng chừng rất hấp dẫn, nhưng lại kết thúc một cách không ai ngờ tới. Đội chủ sân Stamford Bridge dễ dàng bị đoàn quân thiện chiến của Manuel Pellegrini "làm gỏi" bởi cú hattrick của ngôi sao Sergio Aguero. Thắng lợi này giúp Man City đánh chiếm vị trí thứ 3 của Arsenal.


Man City đã trỗi dậy mạnh mẽ. Ảnh: Internet.
Tottenham là đội duy nhất chưa ra quân ở vòng này. Rạng sáng mai, đoàn quân của Mauricio Pochettino sẽ làm khách trước một Stoke City khó nhằn. Tuy nhiên, người hâm mộ đội bóng thành London hy vọng với đà tâm lý tốt khi biết được đối thủ cạnh tranh trực tiếp Leicester đã bị cầm hoà, các cầu thủ Spurs sẽ dốc toàn lực nằm có được một kết quả có lợi trong cuộc đua tranh đến ngai vàng Premier League.

Kịch bản nào cho top 4

Tưởng chừng đã an bài, Premier League bỗng trở nên sôi động hơn hẳn. Leicester City vẫn là đội "nắm đằng chuôi" khi bỏ xa đội đứng sau Tottenham 8 điểm nhưng thi đấu nhiều hơn một trận. Thầy trò Claudio Ranieri nên nhớ, đội bóng của mình đang thi đấu nhiều hơn một trận so với cả 3 đội còn lại trong top 4. Ngoài ra, với lịch thi đấu khắc nghiệt phía trước khi phải đối đầu lần lượt Manchester United, Everton và Chelsea ở 3 vòng đấu cuối, chắc chắn Bầy cáo cần thận trọng nếu không muốn vuột mất những thành quả kể từ đầu mùa.

Trong khi đó, dù đã hết cơ hội lên ngôi vô địch, cả Arsenal và Manchester City đều cạnh tranh quyết liệt một vị trí trong top 3. Lịch thi đấu của Man xanh khó khăn hơn rất nhiều so với Pháo thủ. Đoàn quân của Pellegrini phải căng mình ở cả 2 mặt trận Champions League và Premier League. Tuy nhiên, bản thân đội bóng thành Manchester sẽ có cơ hội tự quyết số phận của mình khi đối đầu trực tiếp Arsenal vào ngày 7/5.


Arsenal vẫn nắm trong tay quyền tự quyết. Ảnh: Internet.
Nếu so với Arsenal, các đối thủ còn lại của Man xanh tại giải quốc nội cũng khó khăn hơn nhiều. Lần lượt là những Stoke, Southampton và Swansea sẽ xuất hiện ở những vòng đấu cuối. Trong khi đó, cơ hội đánh chiếm top 3 của Pháo thủ khá sáng sủa nếu họ biết tận dụng cơ hội của mình. Trước các đối thủ làng nhàng như West Brom, Sunderland, Norwich hay Aston Villa, 3 điểm là mục tiêu quan trọng nhất đối với Arsene Wenger và các học trò.

Không thể không nhắc đến các đối thủ ngoài top 4 như Manchester United hay West Ham. Cả 2 sẽ có cuộc chạm trán quyết định vào ngày 11/5 tới. Lịch thi đấu của Quỷ đỏ không quá nặng nề với việc chỉ phải đối đầu với Leicester và Everton ở những vòng đấu cuối. Cơ hội vẫn còn nguyên cho thầy trò Louis van Gaal.

Kết

Cuộc đua đến ngôi vương hay một vị trí trong top 4 Premier League vốn luôn rất hấp dẫn. Những cái tên xứng đáng nhất đều đã dần lộ diện, hứa hẹn một mùa giải "điên rồ" nhất từ trước đến nay, đặc biệt nếu vị trí tân vương Premier League gọi lên một cái tên quen thuộc xuyên suốt mùa giải này, Leicester City.

BXH Premier League sau vòng 33

', 0)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (2, N'Totti lại ''làm loạn'' ở AS Roma', N'/Images/TinTuc/95714491d4d247.jpg', N'Trong những ngày cuối cùng tại AS Roma, hình ảnh của Francesco Totti đang ngày càng trở nên xấu xí hơn.', CAST(N'2021-11-16T19:49:59.520' AS DateTime), N'Trong trận hòa 3-3 giữa AS Roma và Atlanta vừa qua, Totti đã đóng vai trò cứu tinh cho Bầy Sói khi được tung ra sân từ băng ghế dự bị. Cụ thể lão tướng 39 tuổi này đã ghi bàn thắng ấn định trận hòa cho hai đội vào phút 86, thậm chí nếu như Edin Dzeko tận dụng tốt hơn cơ hội có được từ đường chuyền của Totti. thì có lẽ đội bóng thành Rome đã có được một chiến thắng.

Tuy nhiên theo những nguồn tin từ Italia, bất chấp màn trình diễn khá thuyết phục này, HLV Luciano Spalletti vẫn tuyên bố thẳng với Totti rằng ông hoàn toàn không có cái nhìn khác nào dành cho anh. Spalletti khẳng định rằng với việc thể lực đã suy giảm quá nhiều vì tuổi tác, Totti đã không còn tương lai trong đội hình của Roma.

Những lời nói của Spalletti đã khiến Totti không kiềm chế được cơn giận của mình, để rồi danh thủ người Italia đã to tiếng cự lại ông thầy. Lời qua tiếng lại của Totti và Spalletti đã khiến cho bầu không khí trong phòng thay đồ của AS Roma sau trận đấu với Atlanta trở nên vô cùng căng thẳng.

Thực tế thì mâu thuẫn giữa Totti và Spalletti đã xuất hiện ngày từ khi Spalletti lên nắm quyền thay cho Rudi Garcia. Gần nhất Totti còn tự ý mở một cuộc họp báo để chỉ trích Spalletti, cũng như BLĐ Roma vì kế hoạch tống anh khỏi Olimpico.

', 0)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (3, N'Cựu hậu vệ U23 Việt Nam qua đời ở tuổi 23', N'/Images/TinTuc/95714444658e73.jpg', N'Đó là hậu vệ Trần Phước Thọ hiện đang thi đấu cho CLB Long An', CAST(N'2021-11-16T19:49:59.520' AS DateTime), N'Thông tin trên đã được chủ tịch CLB Long An - ông Võ Thành Nhiệm xác thực. Ông cho biết, khuya 17/4, hậu vệ từng khoác áo đội tuyển U23 Việt Nam đã ra đi vì một tai nạn giao thông ở Long An.


Hậu vệ Trần Phước Thọ trong màu áo U23 Việt Nam. Ảnh: Internet.
Được biết, Phước Thọ bị ngã xe máy, xương sườn đâm lủng phổi. Anh được đưa đi cấp cứu nhưng đã không qua khỏi.

Còn nhớ hồi tháng 3/2015, Phước Thọ được HLV Toshiya Miura triệu tập lên tuyển U23 Việt Nam để chuẩn bị cho vòng lại U23 châu Á. Sau đó hậu vệ của Long An được cùng các đồng đội trên tuyển sang Malaysia thi đấu. Tuy nhiên, Phước Thọ đã không thể ra sân bất kỳ một trận nào vì bị rạn xương bàn chân.

Sau khi trở về CLB, Phước Thọ đã được chữa lành vết thương, nhưng anh tiếp tục gặp xui xẻo khi bị đứt dây chằng đầu gối trong trận gặp HAGL ở vòng 25 V-League 2015 và phải phẫu thuật.

Ở V-League 2016, Phước Thọ không được đăng ký thi đấu ở giai đoạn một. Mới đây, anh vừa trở lại tập luyện cùng CLB để chuẩn bị cho giai đoạn lượt về thì... anh lại ra đi mãi mãi.

Đây là mất mát lớn của CLB Long An bởi Phước Thọ là cầu thủ được đánh giá là một trong những tốt nhất ở Long An hiện nay. Xin chia buồn với CLB Long An và gia đình Phước Thọ. Vĩnh biệt anh, tài năng trẻ của bóng đá nước nhà.

Vài nét về Trần Phước Thọ

- Sinh năm: 1993, tại Châu Thành, Long An
- Cao: 1m71
- Nặng: 63 kg
- Vị trí sở trường: Hậu vệ cánh trái
- Năm 2013: Lên đội 1 Đồng Tâm Long An
- Năm 2015: Được triệu tập vào ĐT U23 Việt Nam dự vòng loại U23 châu Á.', 0)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (4, N'Klopp nói gì về việc thay tới 10 cầu thủ của Liverpool', N'/Images/TinTuc/9571444ba02fbf.jpg', N'HLV Jurgen Klopp đã lên tiếng bảo vệ việc thay đổi gần như toàn bộ đội hình của Liverpool so với lần ra sân gần nhất.', CAST(N'2021-11-16T19:49:59.520' AS DateTime), N'Trong loạt trận Premier League diễn ra vào tối qua, Liverpool đã có chiến thắng 2-1 đầy thuyết phục trước Bournemouth. Tuy nhiên với sơ đồ có tới 10 sự thay đổi so với màn lội ngược dòng 4-3 không tưởng trước Dortmund tại Europa League hồi giữa tuần trước, The Kop vẫn vấp phải không ít sự chỉ trích từ dư luận.

Tuy nhiên khi được hỏi về quyết định này, HLV Jurgen Klopp đã khẳng định rằng ông đã không làm gì sai cả: “Chúng tôi đúng là đang có cơ hội rất tốt hơn để lên ngôi ở Europa League. Tuy nhiên, điều đó cũng không đồng nghĩa với việc chúng tôi xem nhẹ Premier League, bởi những trận đấu ở đây luôn có tầm quan trọng hàng đầu, bất kể chúng tôi đang hướng tới mục tiêu gì.

Chính vì coi trọng Premier League nên tôi mới thay đổi tới 10 cầu thủ như vậy. Các cầu thủ hôm nay ngồi dự bị vừa phải trải qua một trận chiến căng thẳng và vắt kiệt sức lực, vậy nên xoay tua là điều vô cùng cần thiết trong lúc này, bằng không chúng tôi đã có thể trắng tay ngày hôm nay rồi. Sẽ vẫn còn 2 trận đấu Premier League trước khi chúng tôi thi đấu trận bán kết Europa League, không có những mối bận tâm cho đấu trường Châu Âu lúc này đâu.”

Với chiến thắng trước Bournemouth, Liverpool đang đứng thứ 8 tại Premier League với 51 điểm, tuy nhiên The Kop hiện cũng chỉ mới thi đấu 32 trận, trong khi đây đã là vòng đấu thứ 34.', 0)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (5, N'Rakitic tặng bàn thắng cho Valencia, Barca rơi tự do', N'/Images/TinTuc/9571438b6ec5ee.jpg', N'Vòng 33 La Liga, Barcelona tiếp tục phải nhận trận thua thứ 3 liên tiếp sau khi để thua 1-2 trước Valencia. Ivan Rakitic chính là tội đồ của trận đấu này.', CAST(N'2021-11-16T19:49:59.520' AS DateTime), N'
Việc cả Atletico Madrid và Real Madrid đều thắng khiến cho Barcelona tiếp Valencia với sức ép phải thắng bằng mọi giá. Ảnh: Internet.

Nhà ĐKVĐ La Liga nhập cuộc với nhiều cơ hội ngon ăn, nhưng tiếc rằng bộ ba Lionel Messi, Luis Suarez và Neymar lại vô duyên trước khung thành của Valencia. Ảnh: Internet.

Thủ môn Diego Alves của Valencia đã có một trận đấu tròn vai dẫu rằng ở phút 63 anh vẫn phải vào lưới nhặt bóng một lần. Ảnh: Internet.

Người lập công trong tình huống này là Messi. Ảnh: Internet.

Pha lập công này giúp Messi giải tỏa cơn khát bàn thắng kéo dài 515 phút và cũng là bàn thắng thứ 500 của tiền đạo số 10 của Barca. Ảnh: Internet.

Nhưng bấy nhiêu không đủ để giúp Barca thoát khỏi trận thua trước Valencia bởi trước đó họ đã phải nhận hai bàn thua. HLV Luis Enrique chán nản. Ảnh: Internet.

Phút 26, Ivan Rakitic vô tình làm tung lưới Claudio Bravo mở tỷ số trận đấu cho Valencia. Ảnh: Internet.

Đến phút bù giờ của hiệp 1, Santiago Mina bất ngờ nhân đôi cách biệt cho đội khách. Ảnh: Internet.

Chung cuộc, Barca phải chấp nhận thất bại trước Valencia với tỷ số 1-2. Đây là lần đầu tiên kể từ tháng 2/2003, Gã khổng lồ xứ Catalan mới lại thua 3 trận liên tiếp ở La Liga. Messi cúi mặt. Ảnh: Internet.

Hiện tại, Atletico Madrid và Barcelona có cùng 76 điểm sau 33 vòng đấu nhưng đội bóng xứ Catalan vẫn dẫn đầu La Liga do hơn về đối đầu. Trong khi đó, Real Madrid chỉ kém 2 đội đầu bảng 1 điểm sau chiến thắng 5-1 trước Getafe ở vòng đấu này. Ảnh: Internet.', 14)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (6, N'Điểm tin hậu trường 16/4: Quá khứ ‘ngây thơ’ của CR7; Neymar lụn bại vì dục tính', N'/Images/TinTuc/95711e684199f2.jpg', N'Iniesta ‘thổn thức’ trên xe buýt; Hồng Quân nhẫn tâm lừa dối Kỳ Hân; Neymar lụn bại vì dục tính;… là những tin chính trong điểm tin hậu trường 16/4.', CAST(N'2021-11-16T19:49:59.520' AS DateTime), N'HLV Miura bất ngờ đổi nghề làm BLV: Cụ thể hôm 9/4 vừa qua, NHM bóng đá Nhật Bản bất ngờ nhìn thấy HLV Miura trong chương trình Football Brain với tư cách là một BLV bóng đá. Cùng tham gia với ông trong chương trình này có cựu danh thủ Brazil - Edmilson bình luận về AFC Champions League cũng như cơ hội của ĐT Nhật Bản ở vòng loại World Cup 2018. Đây cũng không phải là công việc mới mẻ gì với HLV Miura. Trước khi sang Việt Nam, HLV Miura là một BLV bóng đá có tiếng ở đất nước "Mặt trời mọc". Vì thế, việc ông quay trở lại với nghề cũ sau thời gian dài thất nghiệp là điều dễ hiểu.


Iniesta ‘thổn thức’ trên xe buýt: Sau trận thua 0-2 trước Atletico Madrid, Barcelona chính thức trở thành cựu vương của châu Âu. Các cầu thủ của họ đã buồn bã cùng trên chiếc xe buýt từ sân Vicente Calderon trở về nhà. Riêng Iniesta, anh đã không kìm được nước mắt. Tờ Sport đã ghi lại được khoảnh khắc tiền vệ nguời Tây Ban Nha bật khóc. Anh là người có mặt trên xe khá sớm và ngồi chờ các đồng đội. Có vẻ như ngay lúc đó, Iniesta không còn nghĩ đến chuyện gì khác ngoài trận thua.


Quá khứ ‘ngây thơ’ của CR7: Gemma Atkinson, nữ diễn viên kiêm người mẫu người Anh vừa tiết lộ một chi tiết thú vị liên quan đến những ngày đầu cô yêu Cris Ronaldo. Người mẫu 31 tuổi nổi tiếng nước Anh cho hay, khi mới yêu nhau, Cris Ronaldo thường đến nhà cô chơi, dù nhà chẳng có ai khác ngoài 2 người nhưng ngôi sao người Bồ Đào Nha chẳng “làm ăn’’ gì ngoài việc dán mắt vào xem ti-vi.


Neymar lụn bại vì dục tính: Neymar không chỉ làm đẹp. Một nguyên nhân khác quan trọng hơn khiến anh đánh mất phong độ là những bữa tiệc và gái. Trong thời gian ngắn gần đây, Neymar trải qua không ít cuộc tình. Từ “bom sex” Elizabeth Martinez cho đến người mẫu Thaila Ayala, rồi nữ diễn viên Grace Moretz. Gần đây, ngôi sao truyền hình, Lorena Improta là người gần nhất bước chân vào cuộc đời Neymar. Chính điều này là một trong những lý do khiến Barca thất bại trước Real Madrid, Sociedad, và đặc biệt là việc bị Atletico loại khỏi Champions League.


Bạn gái Công Phượng “quẩy” cực sung trong sự kiện: Trong một sự kiện mới đây, bạn gái Công Phượng - ca sĩ Hòa Minzy khiến NHM choáng váng khi diện bộ trang phục hoạt hình minions cùng những trò nghịch không giống ai của mình. Dù đã là một ca sĩ tiếng tăm nhưng Hòa Minzy vẫn giữ được bản chất "khùng không đối thủ" khiến NHM vô cùng thích thú.


Hồng Quân nhẫn tâm lừa dối Kỳ Hân: Xoay quanh thông tin đang gây xôn xao dư luận rằng Mạc Hồng Quân mỗi tháng vẫn chu cấp 60 triệu đồng cho tình cũ Khánh Ly và con trai, mới đây, chính nữ diễn viên "Nhật ký Vàng Anh" đã tự mình lên tiếng để xác nhận việc này. Bà mẹ một con thẳng thắn phủ nhận và khẳng định đó hoàn toàn là chuyện không có thật.


Nhiều người nghi ngờ rằng chính Kỳ Hân cũng không biết số tiền 60 triệu ấy có thật sự tồn tại hay không trong trường hợp cô chỉ tin tưởng và răm rắp nghe theo lời một phía từ Mạc Hồng Quân. Rõ ràng, là một chân dài đang có danh tiếng và chỗ đứng trong làng giải trí, Kỳ Hân chẳng dại gì lại tự vẽ ra một con số ảo rồi tự tin trả lời trước truyền thông như vậy.

', 0)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (7, N'Choáng! Nữ sinh Trung Quốc luyện võ trong bộ đồ sexy', N'/Images/TinTuc/957130c6ae7328.jpg', N'Ngày 7/4, hơn 100 nữ sinh Trung Quốc đến từ khắp nơi tham gia một sự kiện với bộ đồ cực ngắn luyện võ. Điều này khiến khán giả dậy sóng với nhiều tranh cãi trái chiều.', CAST(N'2021-11-16T19:49:59.520' AS DateTime), N'Đó là chương trình cổ động nữ giới học võ tự vệ, kêu gọi mọi người giúp đỡ khi thấy người gặp nạn. Các nữ sinh tham dự giơ cao bảng hiệu: "Thấy người bị hại, ra tay cứu giúp, im lặng là tiếp tay cho kẻ xấu" và được học các chiêu thức phòng thân trong môn võ Vịnh Xuân quyền.


Các nữ sinh tham gia tập võ. Ảnh: Internet.
Mục đích và ý nghĩa của chương trình này là rất tốt, nhưng trang phục siêu ngắn của cá nữ sinh lại gây ra làn sóng tranh cãi vì bị cho rằng đây là chiêu thức gây sự chú ý không phù hợp với chương trình. Rất nhiều khán giả chia sẻ ngoài việc biết tự vệ, các cô gái khi ra đường nên chú ý trang phục hòng tránh sự chú ý của các tên "yêu râu xanh".

Sau đây là một số hình ảnh trong sự kiện:





', 4)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (8, N'Ông chủ Leicester ‘cưỡi’ trực thăng tới xem Bầy cáo tập luyện', N'/Images/TinTuc/957134db069430.jpg', N'Vị chủ tịch của Leicester City khoe độ giàu có của mình khi tới xem thầy trò HLV Claudio Ranieri tập luyện bằng trực thăng.đ', CAST(N'2021-11-16T19:49:59.520' AS DateTime), N'<p>&egrave;dfd</p>
', 10)
SET IDENTITY_INSERT [dbo].[TinTucs] OFF
GO
ALTER TABLE [dbo].[HoaDons] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [GiaGiam]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [DacBiet]
GO
ALTER TABLE [dbo].[TinTucs] ADD  CONSTRAINT [DF_TinTucs_LuotXem]  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaps_HoaDonNhaps] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDonNhaps] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaps_HoaDonNhaps]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaps_SanPhams] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaps_SanPhams]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_DetailBill_Bills] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDons] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_DetailBill_Bills]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_DetailBill_Products] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_DetailBill_Products]
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPhams_NhaSanXuats] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[HangSanXuats] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietSanPhams] CHECK CONSTRAINT [FK_ChiTietSanPhams_NhaSanXuats]
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_DetailProducts_Products] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietSanPhams] CHECK CONSTRAINT [FK_DetailProducts_Products]
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_InformationAccounts_Accounts] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans] CHECK CONSTRAINT [FK_InformationAccounts_Accounts]
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhaps_NhaPhanPhois] FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
GO
ALTER TABLE [dbo].[HoaDonNhaps] CHECK CONSTRAINT [FK_HoaDonNhaps_NhaPhanPhois]
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhaps_TaiKhoans] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[HoaDonNhaps] CHECK CONSTRAINT [FK_HoaDonNhaps_TaiKhoans]
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([MaChuyenMuc])
REFERENCES [dbo].[ChuyenMucs] ([MaChuyenMuc])
GO
ALTER TABLE [dbo].[SanPhams] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_NhaPhanPhois_NhaPhanPhois] FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois] CHECK CONSTRAINT [FK_SanPhams_NhaPhanPhois_NhaPhanPhois]
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_NhaPhanPhois_SanPhams] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois] CHECK CONSTRAINT [FK_SanPhams_NhaPhanPhois_SanPhams]
GO
ALTER TABLE [dbo].[TaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_TypeAccounts] FOREIGN KEY([LoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoans] ([MaLoai])
GO
ALTER TABLE [dbo].[TaiKhoans] CHECK CONSTRAINT [FK_Accounts_TypeAccounts]
GO






USE [NOVA]
GO
/****** Object:  StoredProcedure [dbo].[sp_khach_get_by_id]    Script Date: 9/15/2023 2:46:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_khach_get_by_id](@id int)
AS
    BEGIN
      SELECT  *
      FROM KhachHangs
      where id= @id;
    END;
USE [NOVA]
GO
/****** Object:  StoredProcedure [dbo].[sp_khach_create]    Script Date: 9/15/2023 3:09:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_khach_create](
@TenKH nvarchar(50),
@GioiTinh bit,
@DiaChi nvarchar(250),
@SDT nvarchar(50),
@Email nvarchar(250)
)
AS
    BEGIN
       insert into KhachHangs(TenKH,GioiTinh,DiaChi,SDT,Email)
	   values(@TenKH,@GioiTinh,@DiaChi,@SDT,@Email);
    END;
USE [NOVA]
GO
/****** Object:  StoredProcedure [dbo].[sp_khach_search]    Script Date: 9/15/2023 3:09:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[sp_khach_search] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50),
									   @dia_chi Nvarchar(250)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              k.Id,
							  k.TenKH,
							  k.DiaChi
                        INTO #Results1
                        FROM KhachHangs AS k
					    WHERE  (@ten_khach = '' Or k.TenKH like N'%'+@ten_khach+'%') and						
						(@dia_chi = '' Or k.DiaChi like N'%'+@dia_chi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              k.Id,
							  k.TenKH,
							  k.DiaChi
                        INTO #Results2
                        FROM KhachHangs AS k
					    WHERE  (@ten_khach = '' Or k.TenKH like N'%'+@ten_khach+'%') and						
						(@dia_chi = '' Or k.DiaChi like N'%'+@dia_chi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
USE [NOVA]
GO
/****** Object:  StoredProcedure [dbo].[sp_thong_ke_khach]    Script Date: 9/22/2023 2:11:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_thong_ke_khach] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50),
									   @fr_NgayTao datetime, 
									   @to_NgayTao datetime
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  c.SoLuong,
							  c.TongGia,
							  h.NgayTao,
							  h.TenKH,
							  h.Diachi
                        INTO #Results1
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE  (@ten_khach = '' Or h.TenKH like N'%'+@ten_khach+'%') and						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
                            AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))              
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  c.SoLuong,
							  c.TongGia,
							  h.NgayTao,
							  h.TenKH,
							  h.Diachi
                        INTO #Results2
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE  (@ten_khach = '' Or h.TenKH like N'%'+@ten_khach+'%') and						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
						AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))              
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
	USE [NOVA]
GO
/****** Object:  StoredProcedure [dbo].[sp_hoa_don_update]    Script Date: 9/22/2023 3:56:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_hoa_don_update]
(@MaHoaDon        int, 
 @TenKH              NVARCHAR(50), 
 @Diachi          NVARCHAR(250), 
 @TrangThai         bit,  
 @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		UPDATE HoaDons
		SET
			TenKH  = @TenKH ,
			Diachi = @Diachi,
			TrangThai = @TrangThai
		WHERE MaHoaDon = @MaHoaDon;
		
		IF(@list_json_chitiethoadon IS NOT NULL) 
		BEGIN
			 -- Insert data to temp table 
		   SELECT
			  JSON_VALUE(p.value, '$.maChiTietHoaDon') as maChiTietHoaDon,
			  JSON_VALUE(p.value, '$.maHoaDon') as maHoaDon,
			  JSON_VALUE(p.value, '$.maSanPham') as maSanPham,
			  JSON_VALUE(p.value, '$.soLuong') as soLuong,
			  JSON_VALUE(p.value, '$.tongGia') as tongGia,
			  JSON_VALUE(p.value, '$.status') AS status 
			  INTO #Results 
		   FROM OPENJSON(@list_json_chitiethoadon) AS p;
		 
		 -- Insert data to table with STATUS = 1;
			INSERT INTO ChiTietHoaDons (MaSanPham, 
						  MaHoaDon,
                          SoLuong, 
                          TongGia ) 
			   SELECT
				  #Results.maSanPham,
				  @MaHoaDon,
				  #Results.soLuong,
				  #Results.tongGia			 
			   FROM  #Results 
			   WHERE #Results.status = '1' 
			
			-- Update data to table with STATUS = 2
			  UPDATE ChiTietHoaDons 
			  SET
				 SoLuong = #Results.soLuong,
				 TongGia = #Results.tongGia
			  FROM #Results 
			  WHERE  ChiTietHoaDons.maChiTietHoaDon = #Results.maChiTietHoaDon AND #Results.status = '2';
			
			-- Delete data to table with STATUS = 3
			DELETE C
			FROM ChiTietHoaDons C
			INNER JOIN #Results R
				ON C.maChiTietHoaDon=R.maChiTietHoaDon
			WHERE R.status = '3';
			DROP TABLE #Results;
		END;
        SELECT '';
    END;
	USE [NOVA]
GO
/****** Object:  StoredProcedure [dbo].[sp_hoadon_create]    Script Date: 9/22/2023 4:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_hoadon_create]
(@TenKH              NVARCHAR(50), 
 @Diachi          NVARCHAR(250), 
 @TrangThai         bit,  
 @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		DECLARE @MaHoaDon INT;
        INSERT INTO HoaDons
                (TenKH, 
                 Diachi, 
                 TrangThai               
                )
                VALUES
                (@TenKH, 
                 @Diachi, 
                 @TrangThai
                );

				SET @MaHoaDon = (SELECT SCOPE_IDENTITY());
                IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietHoaDons
						 (MaSanPham, 
						  MaHoaDon,
                          SoLuong, 
                          TongGia               
                        )
                    SELECT JSON_VALUE(p.value, '$.maSanPham'), 
                            @MaHoaDon, 
                            JSON_VALUE(p.value, '$.soLuong'), 
                            JSON_VALUE(p.value, '$.tongGia')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p;
                END;
        SELECT '';
    END;
CREATE PROCEDURE [dbo].[sp_hoadon_get_by_id](@MaHoaDon        int)
AS
    BEGIN
        SELECT h.*, 
        (
            SELECT c.*
            FROM ChiTietHoaDons AS c
            WHERE h.MaHoaDon = c.MaHoaDon FOR JSON PATH
        ) AS list_json_chitiethoadon
        FROM HoaDons AS h
        WHERE  h.MaHoaDon = @MaHoaDon;
    END;