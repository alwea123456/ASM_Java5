USE [Shepoo]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 6/14/2022 10:51:47 PM ******/
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
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 6/14/2022 10:51:47 PM ******/
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
/****** Object:  Table [dbo].[ChiTietGioHAng]    Script Date: 6/14/2022 10:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHAng](
	[MaCTHD] [int] IDENTITY(1,1) NOT NULL,
	[MaGioHang] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuongMua] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 6/14/2022 10:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaCTHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[NoiBan] [nvarchar](100) NOT NULL,
	[NoiNhan] [nvarchar](100) NOT NULL,
	[PhiVanChuyen] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 6/14/2022 10:51:47 PM ******/
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
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/14/2022 10:51:47 PM ******/
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
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 6/14/2022 10:51:47 PM ******/
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
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/14/2022 10:51:47 PM ******/
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
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 6/14/2022 10:51:47 PM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/14/2022 10:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaLSP] [int] NOT NULL,
	[DaBan] [int] NOT NULL,
	[MoTa] [nvarchar](200) NULL,
	[MaNguoiBan] [int] NULL,
	[NoiBan] [nvarchar](50) NOT NULL,
	[MauSac] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[xuatsu] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Thongbao]    Script Date: 6/14/2022 10:51:47 PM ******/
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
/****** Object:  Table [dbo].[Video]    Script Date: 6/14/2022 10:51:47 PM ******/
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
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (1, N'Áo')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (2, N'Quần')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (3, N'Tai nghe')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (4, N'Kính cường lực')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (5, N'Bàn phím')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (6, N'Balo')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (7, N'Trang sức')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (8, N'Mắt kính')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (9, N'Dụng cụ trong nhà')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (10, N'Nón')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (5, N'Áo Thun Polo ', 120000, 10, 1, 99, N'Chất liệu 100% cotton mang đến sự cho người dùng sự mát mẻ, thoáng khí', 0, N'TPHCM', N'Trắng', N'XL', N'Made in China', N'Cotton', 5, N'noImage.jpg', N'ao2.png', N'ao3.png', N'ao4.png', N'ao5.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (7, N'Quần Jean Rách ', 150000, 25, 2, 105, N'Quần Jean phong cách hiện đại cho nam', 0, N'Gia Lai', N'Đen', N'M, L, XL, XXL', N'Made in Vietnam', N'Jean', 4, N'noImage.jpg', N'quan2.png', N'quan3.png', N'quan4.png', N'quan5.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (8, N'Tai nghe AirPods 2', 500000, 20, 3, 120, N'Tai nghe AirPods đến từ Apple mang lại cảm giác âm thanh chất lượng, sống động, chắc chắn phù hợp với mọi lứa tuổi', 0, N'TPHCM', N'Trắng', N'', N'Made in USA', N'Nhựa ABS', 5, N'noImage.jpg', N'tainghe2.png', N'tainghe3.png', N'tainghe4.png', N'tainghe5.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (9, N'Kính cường lực Iphone X', 10000, 100, 4, 130, N'Kính cường lực 9D dành cho Iphone X chống lóa, chống nhìn trộm', 0, N'Hà Nội', N'Trong suốt', N'', N'Made in China', N'Glass', 5, N'noImage.jpg', N'kinh2.png', N'kinh3.png', N'kinh4.png', N'kinh5.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (11, N'Bàn phím cơ', 400000, 110, 5, 20, N'Bàn phím cơ Blue Switch mang đến độ nảy vừa phải và âm thanh kích thích', 0, N'Nghệ An', N'Đen  ', N'', N'Made in China', N'Nhựa ABS', 4, N'noImage.jpg', N'banphim2.png', N'banphim3.png', N'banphim4.png', N'banphim5.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (12, N'Balo đi học', 150000, 50, 6, 50, N'Balo nhiều ngăn, tiện lợi dành cho sinh viên, học sinh', 0, N'TPHCM', N'Đen', N'', N'Made in Vietnam', N'Vải Canvas', 5, N'noImage.jpg', N'balo2.png', N'balo3.png', N'balo4.png', N'balo5.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (13, N'Vòng đeo tay ', 160000, 98, 7, 26, N'Vòng đeo tay thiết kế thời thượng, phù hợp cho giới trẻ', 0, N'Gia Lai', N'Bạc', N'Free Size', N'Made in Japan', N'Inox', 3, N'noImage.jpg', N'vong2.png', N'vong3.png', N'vong4.png', N'vong5.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (14, N'Mắt kính', 90000, 45, 8, 10, N'Mắt kính đen phong cách Hàn Quốc, phù hợp cho nam và nữ', 0, N'TPHCM', N'Đen', N'', N'Made in Vietnam', N'Nhựa ABS', 4, N'noImage.jpg', N'kinh2.png', N'kinh3.png', N'kinh4.png', N'kinh5.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (15, N'Cây lau nhà đa năng', 110000, 67, 9, 56, N'Cây lau nhà đa năng, thiết kế đa chiều dễ dàng lau chùi', 0, N'Hà Nội', N'Trắng, Đen, Bạc', N'', N'Made in Vietnam', N'Nhựa-Nhôm', 5, N'noImage.jpg', N'launha2.png', N'launha3.png', N'launha4.png', N'launha.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [SoLuong], [MaLSP], [DaBan], [MoTa], [MaNguoiBan], [NoiBan], [MauSac], [Size], [xuatsu], [ChatLieu], [RATE], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [Active]) VALUES (16, N'Nón tai bèo', 40000, 100, 10, 78, N'Nón tai bèo xuất xứ từ Việt Nam không còn xa lạ với tất cả mọi người, thiết kế bằng chất liệu cotton thoáng mát giúp mọi người dễ dàng đi ngoài trời', 0, N'Nghệ An ', N'Đen , Vàng, Nâu', N'Free Size', N'Made in Vietnam', N'Cotton', 4, N'noImage.jpg', N'non2.png', N'non3.png', N'non4.png', N'non5.png', 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT INTO Nguoidung
(UserName, SDT,Gioitinh,Ngaysinh,Diachi,Active,Vaitro,Tenshop,TenNguoiDUng,password,Email,Image)
VALUES
(N'nguyenlvps', '0123743412',1,'2002-10-22',N'Hà Nội',1,0,null,N'Lê văn Nguyên','123456','vnguyen2k2@gmail.com','anh1.jpg'),
(N'tarashaki', '0323743412',1,'2001-10-22',N'Đà Nẵng',1,0,null,N'Mai Thị Lệ','123456','maile123@gmail.com','anh1.jpg'),
(N'sang123', '070723153',1,'2002-1-22',N'Lâm Đồng',1,0,null,N'Phạm Vĩnh Sang','123456','sangpv2k2@gmail.com','anh1.jpg'),
(N'trung2k2', '070523842',1,'2002-10-22',N'TP HCM',1,0,null,N'Pham Thành Trung','123456','trung2k2@gmail.com','anh1.jpg');
go
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
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLSP])
GO
ALTER TABLE [dbo].[Thongbao]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[Nguoidung] ([MaND])
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD FOREIGN KEY([MaBinhLuan])
REFERENCES [dbo].[BinhLuan] ([MaBinhLuan])
GO
