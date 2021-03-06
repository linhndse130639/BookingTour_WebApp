USE [master]
GO
/****** Object:  Database [BookingTourLinhNd]    Script Date: 6/22/2020 4:28:17 PM ******/
CREATE DATABASE [BookingTourLinhNd]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookingTourLinhNd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BookingTourLinhNd.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BookingTourLinhNd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BookingTourLinhNd_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BookingTourLinhNd] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookingTourLinhNd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookingTourLinhNd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookingTourLinhNd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookingTourLinhNd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookingTourLinhNd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookingTourLinhNd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET RECOVERY FULL 
GO
ALTER DATABASE [BookingTourLinhNd] SET  MULTI_USER 
GO
ALTER DATABASE [BookingTourLinhNd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookingTourLinhNd] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookingTourLinhNd] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookingTourLinhNd] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BookingTourLinhNd] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BookingTourLinhNd', N'ON'
GO
USE [BookingTourLinhNd]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 6/22/2020 4:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingId] [varchar](50) NOT NULL,
	[BookingDate] [date] NOT NULL,
	[TotalMoney] [varchar](30) NOT NULL,
	[StatusId] [varchar](50) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[DiscountId] [varchar](50) NULL,
 CONSTRAINT [PK__Booking__73951AED8E38533B] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 6/22/2020 4:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[BookingDetailId] [int] IDENTITY(1,1) NOT NULL,
	[TourID] [varchar](50) NOT NULL,
	[Quantity] [varchar](10) NOT NULL,
	[BookingId] [varchar](50) NOT NULL,
 CONSTRAINT [PK__BookingD__8136D45A54107293] PRIMARY KEY CLUSTERED 
(
	[BookingDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 6/22/2020 4:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiscountCode](
	[DiscountId] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PercentDis] [int] NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[ImagesLink] [varchar](500) NOT NULL,
 CONSTRAINT [PK__Discount__E43F6D967384DB40] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/22/2020 4:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status]    Script Date: 6/22/2020 4:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 6/22/2020 4:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tours](
	[TourID] [varchar](50) NOT NULL,
	[TourName] [nvarchar](255) NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL,
	[DateImport] [date] NOT NULL,
	[Price] [varchar](30) NOT NULL,
	[Place] [nvarchar](250) NOT NULL,
	[Quota] [varchar](30) NOT NULL,
	[ImageLink] [varchar](50) NOT NULL,
	[StatusId] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Tours__604CEA10935F4F21] PRIMARY KEY CLUSTERED 
(
	[TourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserHaveDiscount]    Script Date: 6/22/2020 4:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserHaveDiscount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[DiscountId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserHaveDiscount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/22/2020 4:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[FacebookID] [varchar](50) NULL,
	[FacebookLink] [varchar](300) NULL,
	[StatusId] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Users__1788CCAC6D20BC5B] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'25797654489644632020-06-22 12:12:39.079', CAST(N'2020-06-22' AS Date), N'230.0', N'NOPAYPAL', N'2579765448964463', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'25797654489644632020-06-22 16:13:40.960', CAST(N'2020-06-22' AS Date), N'120.0', N'NOPAYPAL', N'2579765448964463', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'25797654489644632020-06-22 16:15:41.739', CAST(N'2020-06-22' AS Date), N'120.0', N'NOPAYPAL', N'2579765448964463', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'BOOK1', CAST(N'2020-06-20' AS Date), N'120', N'DONE', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-21 18:52:30.422', CAST(N'2020-06-21' AS Date), N'500', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-21 19:40:46.956', CAST(N'2020-06-21' AS Date), N'75.0', N'NOPAYPAL', N'linhnd', N'DANANG')
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-21 19:43:57.678', CAST(N'2020-06-21' AS Date), N'120.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-21 19:47:32.642', CAST(N'2020-06-21' AS Date), N'200.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 12:00:37.510', CAST(N'2020-06-22' AS Date), N'120.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 12:57:46.434', CAST(N'2020-06-22' AS Date), N'120.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 13:02:25.084', CAST(N'2020-06-22' AS Date), N'120.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 13:03:43.840', CAST(N'2020-06-22' AS Date), N'100.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 13:05:40.500', CAST(N'2020-06-22' AS Date), N'200.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 13:06:43.062', CAST(N'2020-06-22' AS Date), N'500.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 13:10:06.535', CAST(N'2020-06-22' AS Date), N'100.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 13:11:24.082', CAST(N'2020-06-22' AS Date), N'150.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 13:13:11.604', CAST(N'2020-06-22' AS Date), N'120.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 16:19:11.493', CAST(N'2020-06-22' AS Date), N'200.0', N'NOPAYPAL', N'linhnd', NULL)
INSERT [dbo].[Booking] ([BookingId], [BookingDate], [TotalMoney], [StatusId], [UserID], [DiscountId]) VALUES (N'linhnd2020-06-22 16:26:53.886', CAST(N'2020-06-22' AS Date), N'105.0', N'PAYPAL', N'linhnd', NULL)
SET IDENTITY_INSERT [dbo].[BookingDetail] ON 

INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (1, N'TourBinhDinh1', N'2', N'BOOK1')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (3, N'TourBinhDinh1', N'2', N'BOOK1')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (4, N'TourHCM1', N'1', N'linhnd2020-06-21 18:52:30.422')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (18, N'TourHue1', N'1', N'linhnd2020-06-21 19:40:46.956')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (19, N'TourBinhDinh1', N'1', N'linhnd2020-06-21 19:43:57.678')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (20, N'TourHaLong1', N'1', N'linhnd2020-06-21 19:47:32.642')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (21, N'TourCanTho1', N'1', N'linhnd2020-06-22 12:00:37.510')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (22, N'TourDaNang2', N'1', N'25797654489644632020-06-22 12:12:39.079')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (23, N'TourBinhDinh1', N'1', N'linhnd2020-06-22 12:57:46.434')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (24, N'TourCanTho1', N'1', N'linhnd2020-06-22 13:02:25.084')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (25, N'TourDaNang1', N'1', N'linhnd2020-06-22 13:03:43.840')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (26, N'TourHaLong1', N'1', N'linhnd2020-06-22 13:05:40.500')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (27, N'TourHCM1', N'1', N'linhnd2020-06-22 13:06:43.062')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (28, N'TourDaNang1', N'1', N'linhnd2020-06-22 13:10:06.535')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (29, N'TourHN1', N'1', N'linhnd2020-06-22 13:11:24.082')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (30, N'TourLangSon1', N'1', N'linhnd2020-06-22 13:13:11.604')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (31, N'TourCanTho1', N'1', N'25797654489644632020-06-22 16:13:40.960')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (32, N'TourCanTho1', N'1', N'25797654489644632020-06-22 16:15:41.739')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (33, N'TourHaLong1', N'1', N'linhnd2020-06-22 16:19:11.493')
INSERT [dbo].[BookingDetail] ([BookingDetailId], [TourID], [Quantity], [BookingId]) VALUES (34, N'TourHCM2', N'1', N'linhnd2020-06-22 16:26:53.886')
SET IDENTITY_INSERT [dbo].[BookingDetail] OFF
INSERT [dbo].[DiscountCode] ([DiscountId], [Name], [PercentDis], [ExpiryDate], [ImagesLink]) VALUES (N'DANANG', N'Discount for tour in Da Nang', 50, CAST(N'2020-09-02' AS Date), N'https://colorlib.com/preview/theme/martine/img/ind/industries_1.png')
INSERT [dbo].[DiscountCode] ([DiscountId], [Name], [PercentDis], [ExpiryDate], [ImagesLink]) VALUES (N'FIRSTBOOKING', N'Discount for First Booking', 50, CAST(N'2020-09-02' AS Date), N'https://colorlib.com/preview/theme/martine/img/ind/industries_3.png')
INSERT [dbo].[DiscountCode] ([DiscountId], [Name], [PercentDis], [ExpiryDate], [ImagesLink]) VALUES (N'SUMMER', N'Summer Tour', 50, CAST(N'2020-09-02' AS Date), N'https://cdn.shopify.com/s/files/1/0021/4889/2732/files/Summer-Sale-coupons.png?v=1590675551')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'ADMIN', N'Admin he thong')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (N'USER', N'Nguoi Dung')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (N'ACTIVE', N'User had active')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (N'DONE', N'Booking sucessful')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (N'NOPAYPAL', N'Booking not payPal')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (N'PAYPAL', N'Booking with paypal')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (N'TOUR_ACTIVE', N'Tour Active')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourBinhDinh1', N'Tour Du lịch Bình Định 2N1D', CAST(N'2020-07-04' AS Date), CAST(N'2020-07-06' AS Date), CAST(N'2020-06-20' AS Date), N'120', N'Bình Định', N'6', N'binh-dinh.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourCanTho1', N'Du Lịch Cần Thơ 4N5D', CAST(N'2020-08-17' AS Date), CAST(N'2020-08-20' AS Date), CAST(N'2020-06-20' AS Date), N'120', N'Cần Thơ', N'5', N'can-tho.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourDaNang1', N'Tour Du lich Da Nang 3N2D', CAST(N'2020-07-26' AS Date), CAST(N'2020-07-29' AS Date), CAST(N'2020-06-20' AS Date), N'100', N'Đà Nẵng', N'5', N'da-nang.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourDaNang2', N'Tour du lịch Bà Nà 2N1D', CAST(N'2020-07-23' AS Date), CAST(N'2020-07-24' AS Date), CAST(N'2020-06-20' AS Date), N'230', N'Đà Nẵng', N'6', N'da-nang-2.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourHaLong1', N'Du Lịch Hạ Long 4N5D', CAST(N'2020-07-22' AS Date), CAST(N'2020-07-26' AS Date), CAST(N'2020-06-20' AS Date), N'200', N'Hạ Long', N'5', N'ha-long.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourHCM1', N'Du Lịch Hồ Chí Minh 4N5D', CAST(N'2020-08-20' AS Date), CAST(N'2020-08-24' AS Date), CAST(N'2020-06-20' AS Date), N'500', N'Hồ Chí Minh', N'6', N'hcm.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourHCM2', N'Hồ Chí Minh 2', CAST(N'2020-08-21' AS Date), CAST(N'2020-08-23' AS Date), CAST(N'2020-06-21' AS Date), N'105', N'Hồ Chí Minh', N'5', N'hcm.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourHN1', N'Du Lịch Hà Nội 2N3D', CAST(N'2020-08-21' AS Date), CAST(N'2020-08-23' AS Date), CAST(N'2020-06-20' AS Date), N'150', N'Hà Nội', N'4', N'ha-noi.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourHoiAn1', N'Hội An 2N1D', CAST(N'2020-07-13' AS Date), CAST(N'2020-07-15' AS Date), CAST(N'2020-06-20' AS Date), N'50', N'Hội An', N'6', N'hoi_an.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourHue1', N'Du lịch Huế 3N2D', CAST(N'2020-07-29' AS Date), CAST(N'2020-07-31' AS Date), CAST(N'2020-06-20' AS Date), N'150', N'Huế', N'7', N'hue.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourHue2', N'Tham quan Đại Nội vs Lăng Tẩm 2N1D', CAST(N'2020-07-24' AS Date), CAST(N'2020-07-26' AS Date), CAST(N'2020-06-20' AS Date), N'160', N'Huế', N'5', N'hue-dai-noi.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourLangSon1', N'Tour du lịch Lạng Sơn 2N3D', CAST(N'2020-07-16' AS Date), CAST(N'2020-07-18' AS Date), CAST(N'2020-06-20' AS Date), N'120', N'Lạng Sơn', N'5', N'lang-son.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourLS2', N'Du Lich Lạng Sơn', CAST(N'2020-07-17' AS Date), CAST(N'2020-07-19' AS Date), CAST(N'2020-06-22' AS Date), N'10', N'Lạng Sơn', N'5', N'lang-son-2.jpg', N'TOUR_ACTIVE')
INSERT [dbo].[Tours] ([TourID], [TourName], [FromDate], [ToDate], [DateImport], [Price], [Place], [Quota], [ImageLink], [StatusId]) VALUES (N'TourNgheAn1', N'Du Lịch Nghệ An 3N4D', CAST(N'2020-07-20' AS Date), CAST(N'2020-07-23' AS Date), CAST(N'2020-06-20' AS Date), N'230', N'Nghệ An', N'5', N'nghe-an.jpg', N'TOUR_ACTIVE')
SET IDENTITY_INSERT [dbo].[UserHaveDiscount] ON 

INSERT [dbo].[UserHaveDiscount] ([ID], [UserID], [DiscountId]) VALUES (9, N'linhnd', N'DANANG')
SET IDENTITY_INSERT [dbo].[UserHaveDiscount] OFF
INSERT [dbo].[Users] ([UserID], [Password], [Name], [FacebookID], [FacebookLink], [StatusId], [RoleId]) VALUES (N'2579765448964463', NULL, N'Nguyễn Đức Linh', N'2579765448964463', N'https://www.facebook.com/app_scoped_user_id/YXNpZADpBWEVadlh1UXpIdVhja2JzVDJtdVVxdUxLc0hPaktRTTJhYmNlNWNZAYzNETWNWblV6bHdjU3B2eWtsbHc5enFVVEpxS2lWNjdDMlZASSUk0MGtSYXUwcm5FOFZAqa05JeWswcGMyc0hKTGtFM3c1Ukdk/', N'ACTIVE', N'USER')
INSERT [dbo].[Users] ([UserID], [Password], [Name], [FacebookID], [FacebookLink], [StatusId], [RoleId]) VALUES (N'admin', N'1', N'Admin Linh ', NULL, NULL, N'ACTIVE', N'ADMIN')
INSERT [dbo].[Users] ([UserID], [Password], [Name], [FacebookID], [FacebookLink], [StatusId], [RoleId]) VALUES (N'linhnd', N'1', N'Nguyen Duc Linh', NULL, NULL, N'ACTIVE', N'USER')
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__Booking__StatusI__1CF15040] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__Booking__StatusI__1CF15040]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__Booking__UserID__1DE57479] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__Booking__UserID__1DE57479]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_DiscountCode1] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[DiscountCode] ([DiscountId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_DiscountCode1]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK__BookingDe__Booki__20C1E124] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([BookingId])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK__BookingDe__Booki__20C1E124]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Tours] FOREIGN KEY([TourID])
REFERENCES [dbo].[Tours] ([TourID])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Tours]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK_Tours_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK_Tours_Status]
GO
ALTER TABLE [dbo].[UserHaveDiscount]  WITH CHECK ADD  CONSTRAINT [FK__Relations__Disco__24927208] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[DiscountCode] ([DiscountId])
GO
ALTER TABLE [dbo].[UserHaveDiscount] CHECK CONSTRAINT [FK__Relations__Disco__24927208]
GO
ALTER TABLE [dbo].[UserHaveDiscount]  WITH CHECK ADD  CONSTRAINT [FK__Relations__UserI__239E4DCF] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserHaveDiscount] CHECK CONSTRAINT [FK__Relations__UserI__239E4DCF]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK__Users__RoleId__173876EA] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK__Users__RoleId__173876EA]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK__Users__StatusId__164452B1] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK__Users__StatusId__164452B1]
GO
USE [master]
GO
ALTER DATABASE [BookingTourLinhNd] SET  READ_WRITE 
GO
