USE [Shepoo]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[ID_Anh] [int] IDENTITY(1,1) NOT NULL,
	[MaBinhLuan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Anh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[NoiDung] [nvarchar](200) NULL,
	[DanhGia] [int] NOT NULL,
	[NgayBinhLuan] [datetime] NOT NULL,
	[MaSanPham] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGioHAng]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHAng](
	[MaGioHang] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[NoiBan] [nvarchar](100) NOT NULL,
	[NoiNhan] [nvarchar](100) NOT NULL,
	[PhiVanChuyen] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[TongGia] [float] NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaND] [int] NOT NULL,
	[NgayLapHoaDon] [date] NOT NULL,
	[TongGia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaGiamGia] [int] IDENTITY(1,1) NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[SoPhanTram] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaNguoiDung] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLSP] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[SDT] [varchar](20) NOT NULL,
	[Gioitinh] [bit] NOT NULL,
	[Ngaysinh] [date] NOT NULL,
	[Diachi] [nvarchar](200) NOT NULL,
	[Active] [bit] NULL,
	[Vaitro] [bit] NULL,
	[Tenshop] [nvarchar](50) NULL,
	[TenNguoiDUng] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[LoaiSanPham] [int] NOT NULL,
	[DaBan] [int] NOT NULL,
	[MoTa] [nvarchar](200) NULL,
	[NguoiBan] [nvarchar](50) NOT NULL,
	[NoiBan] [nvarchar](50) NOT NULL,
	[MauSac] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[XuatSu] [nvarchar](50) NULL,
	[ChatLieu] [nvarchar](50) NULL,
	[RATE] [float] NOT NULL,
	[Anh1] [nvarchar](50) NULL,
	[Anh2] [nvarchar](50) NULL,
	[Anh3] [nvarchar](50) NULL,
	[Anh4] [nvarchar](50) NULL,
	[Anh5] [nvarchar](50) NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thongbao]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thongbao](
	[MaTB] [int] IDENTITY(1,1) NOT NULL,
	[Noidung] [nvarchar](200) NOT NULL,
	[MaND] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 6/4/2022 10:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[ID_Video] [int] IDENTITY(1,1) NOT NULL,
	[MaBinhLuan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Video] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Nguoidung] ADD  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Nguoidung] ADD  DEFAULT ((0)) FOR [Vaitro]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [RATE]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('ProductDefault') FOR [Anh1]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('ProductDefault') FOR [Anh2]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('ProductDefault') FOR [Anh3]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('ProductDefault') FOR [Anh4]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('ProductDefault') FOR [Anh5]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD FOREIGN KEY([MaBinhLuan])
REFERENCES [dbo].[BinhLuan] ([MaBinhLuan])
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[Nguoidung] ([MaND])
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [fk_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [fk_SanPham]
GO
ALTER TABLE [dbo].[ChiTietGioHAng]  WITH CHECK ADD FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[ChiTietGioHAng]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[Nguoidung] ([MaND])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[Nguoidung] ([MaND])
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[Nguoidung] ([MaND])
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([LoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLSP])
GO
ALTER TABLE [dbo].[Thongbao]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[Nguoidung] ([MaND])
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD FOREIGN KEY([MaBinhLuan])
REFERENCES [dbo].[BinhLuan] ([MaBinhLuan])
GO
