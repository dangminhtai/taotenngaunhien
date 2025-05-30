USE [master]
GO
/****** Object:  Database [APINAME]    Script Date: 5/5/2025 11:42:24 AM ******/
CREATE DATABASE [APINAME]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'APINAME', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\APINAME.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'APINAME_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\APINAME_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [APINAME] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [APINAME].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [APINAME] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [APINAME] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [APINAME] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [APINAME] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [APINAME] SET ARITHABORT OFF 
GO
ALTER DATABASE [APINAME] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [APINAME] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [APINAME] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [APINAME] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [APINAME] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [APINAME] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [APINAME] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [APINAME] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [APINAME] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [APINAME] SET  ENABLE_BROKER 
GO
ALTER DATABASE [APINAME] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [APINAME] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [APINAME] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [APINAME] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [APINAME] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [APINAME] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [APINAME] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [APINAME] SET RECOVERY FULL 
GO
ALTER DATABASE [APINAME] SET  MULTI_USER 
GO
ALTER DATABASE [APINAME] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [APINAME] SET DB_CHAINING OFF 
GO
ALTER DATABASE [APINAME] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [APINAME] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [APINAME] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [APINAME] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'APINAME', N'ON'
GO
ALTER DATABASE [APINAME] SET QUERY_STORE = ON
GO
ALTER DATABASE [APINAME] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [APINAME]
GO
/****** Object:  User [tamida]    Script Date: 5/5/2025 11:42:24 AM ******/
CREATE USER [tamida] FOR LOGIN [tamida] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [tamida]
GO
/****** Object:  Table [dbo].[FirstName]    Script Date: 5/5/2025 11:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirstName](
	[Số thứ tự] [int] IDENTITY(1,1) NOT NULL,
	[Họ] [nvarchar](20) NULL,
	[Tỉ lệ] [decimal](10, 5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Số thứ tự] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopularNamesFemale]    Script Date: 5/5/2025 11:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopularNamesFemale](
	[Số thứ tự] [int] IDENTITY(1,1) NOT NULL,
	[Tên] [nvarchar](20) NULL,
	[Tỉ lệ] [decimal](10, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[Số thứ tự] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopularNamesMale]    Script Date: 5/5/2025 11:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopularNamesMale](
	[Số thứ tự] [int] IDENTITY(1,1) NOT NULL,
	[Tên] [nvarchar](20) NULL,
	[Tỉ lệ] [decimal](10, 3) NULL,
PRIMARY KEY CLUSTERED 
(
	[Số thứ tự] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubandNamesFemale]    Script Date: 5/5/2025 11:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubandNamesFemale](
	[Số thứ tự] [int] IDENTITY(1,1) NOT NULL,
	[Tên đệm và tên] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Số thứ tự] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubandNamesMale]    Script Date: 5/5/2025 11:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubandNamesMale](
	[Số thứ tự] [int] IDENTITY(1,1) NOT NULL,
	[Tên đệm và tên] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Số thứ tự] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubFemaleName]    Script Date: 5/5/2025 11:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubFemaleName](
	[Số thứ tự] [int] IDENTITY(1,1) NOT NULL,
	[Tên đệm] [nvarchar](20) NULL,
	[Tỉ lệ] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Số thứ tự] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubMaleName]    Script Date: 5/5/2025 11:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMaleName](
	[Số thứ tự] [int] IDENTITY(1,1) NOT NULL,
	[Tên đệm] [nvarchar](20) NULL,
	[Tỉ lệ] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Số thứ tự] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FirstName] ON 

INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (1, N'Nguyễn', CAST(0.30492 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (2, N'Trần', CAST(0.09825 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (3, N'Lê', CAST(0.07744 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (4, N'Phạm', CAST(0.05932 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (5, N'Hoàng', CAST(0.03316 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (6, N'Vũ', CAST(0.02735 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (7, N'Bùi', CAST(0.02479 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (8, N'Phan', CAST(0.02379 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (9, N'Đỗ', CAST(0.02192 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (10, N'Võ', CAST(0.02097 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (11, N'Huỳnh', CAST(0.01972 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (12, N'Dương', CAST(0.01966 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (13, N'Đặng', CAST(0.01962 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (14, N'Ngô', CAST(0.01803 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (15, N'Trương', CAST(0.01672 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (16, N'Đinh', CAST(0.01318 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (17, N'Hồ', CAST(0.01313 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (18, N'Hà', CAST(0.01013 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (19, N'Đào', CAST(0.00968 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (20, N'Đoàn', CAST(0.00936 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (21, N'Trịnh', CAST(0.00931 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (22, N'Lương', CAST(0.00878 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (23, N'Mai', CAST(0.00816 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (24, N'Cao', CAST(0.00702 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (25, N'Lưu', CAST(0.00669 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (26, N'Lý', CAST(0.00654 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (27, N'Nông', CAST(0.00610 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (28, N'Lâm', CAST(0.00556 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (29, N'Tạ', CAST(0.00493 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (30, N'Phùng', CAST(0.00435 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (31, N'Triệu', CAST(0.00412 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (32, N'Chu', CAST(0.00392 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (33, N'Thái', CAST(0.00331 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (34, N'Tô', CAST(0.00326 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (35, N'Vương', CAST(0.00288 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (36, N'Ma', CAST(0.00277 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (37, N'Đàm', CAST(0.00269 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (38, N'Châu', CAST(0.00225 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (39, N'Vi', CAST(0.00220 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (40, N'Lại', CAST(0.00200 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (41, N'Quách', CAST(0.00192 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (42, N'Văn', CAST(0.00187 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (43, N'Đồng', CAST(0.00175 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (44, N'Hứa', CAST(0.00174 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (45, N'Tống', CAST(0.00167 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (46, N'Thạch', CAST(0.00149 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (47, N'La', CAST(0.00144 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (48, N'Tăng', CAST(0.00136 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (49, N'Thân', CAST(0.00131 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (50, N'Lục', CAST(0.00119 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (51, N'Kiều', CAST(0.00116 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (52, N'Đậu', CAST(0.00106 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (53, N'Diệp', CAST(0.00101 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (54, N'Từ', CAST(0.00099 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (55, N'Y', CAST(0.00092 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (56, N'Mã', CAST(0.00086 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (57, N'Bế', CAST(0.00082 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (58, N'Nghiêm', CAST(0.00079 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (59, N'Lã', CAST(0.00076 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (60, N'Lữ', CAST(0.00069 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (61, N'Lô', CAST(0.00069 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (62, N'Lò', CAST(0.00068 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (63, N'Mạc', CAST(0.00064 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (64, N'Kim', CAST(0.00064 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (65, N'Giang', CAST(0.00064 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (66, N'Lường', CAST(0.00061 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (67, N'Bạch', CAST(0.00059 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (68, N'Bàn', CAST(0.00058 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (69, N'Danh', CAST(0.00054 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (70, N'Ninh', CAST(0.00053 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (71, N'Doãn', CAST(0.00052 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (72, N'Chung', CAST(0.00052 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (73, N'Mông', CAST(0.00050 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (74, N'Lăng', CAST(0.00048 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (75, N'Trang', CAST(0.00047 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (76, N'Phương', CAST(0.00046 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (77, N'Âu', CAST(0.00046 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (78, N'Giáp', CAST(0.00045 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (79, N'Sầm', CAST(0.00043 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (80, N'Hồng', CAST(0.00043 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (81, N'Sơn', CAST(0.00042 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (82, N'Cù', CAST(0.00040 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (83, N'Phí', CAST(0.00039 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (84, N'Lư', CAST(0.00039 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (85, N'Khương', CAST(0.00038 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (86, N'Khổng', CAST(0.00038 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (87, N'Dư', CAST(0.00036 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (88, N'Tiêu', CAST(0.00036 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (89, N'Liêu', CAST(0.00035 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (90, N'Thiều', CAST(0.00034 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (91, N'Vy', CAST(0.00034 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (92, N'Tôn', CAST(0.00033 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (93, N'Lộc', CAST(0.00032 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (94, N'Long', CAST(0.00032 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (95, N'Đường', CAST(0.00027 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (96, N'Khuất', CAST(0.00027 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (97, N'Giàng', CAST(0.00026 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (98, N'Nịnh', CAST(0.00026 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (99, N'Nhữ', CAST(0.00025 AS Decimal(10, 5)))
GO
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (100, N'Quan', CAST(0.00025 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (101, N'Khưu', CAST(0.00025 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (102, N'Khúc', CAST(0.00025 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (103, N'Sùng', CAST(0.00025 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (104, N'Trà', CAST(0.00024 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (105, N'Bành', CAST(0.00024 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (106, N'Trình', CAST(0.00021 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (107, N'Ngụy', CAST(0.00021 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (108, N'Hầu', CAST(0.00020 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (109, N'Vàng', CAST(0.00020 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (110, N'Lang', CAST(0.00019 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (111, N'Mạch', CAST(0.00019 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (112, N'Ngân', CAST(0.00019 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (113, N'Biện', CAST(0.00019 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (114, N'Quang', CAST(0.00018 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (115, N'Tào', CAST(0.00018 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (116, N'Chế', CAST(0.00018 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (117, N'Kha', CAST(0.00017 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (118, N'An', CAST(0.00017 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (119, N'Nhâm', CAST(0.00017 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (120, N'Ngọc', CAST(0.00017 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (121, N'Lai', CAST(0.00017 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (122, N'Luân', CAST(0.00017 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (123, N'Ka', CAST(0.00017 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (124, N'Ôn', CAST(0.00017 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (125, N'Tôn-nữ', CAST(0.00017 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (126, N'Cấn', CAST(0.00016 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (127, N'Quản', CAST(0.00016 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (128, N'Thi', CAST(0.00016 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (129, N'A', CAST(0.00016 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (130, N'Chau', CAST(0.00015 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (131, N'Hàn', CAST(0.00015 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (132, N'Hàng', CAST(0.00015 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (133, N'Ông', CAST(0.00015 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (134, N'Thào', CAST(0.00014 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (135, N'Thẩm', CAST(0.00014 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (136, N'Nhan', CAST(0.00014 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (137, N'Liễu', CAST(0.00014 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (138, N'Đới', CAST(0.00014 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (139, N'Chử', CAST(0.00014 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (140, N'Ngọ', CAST(0.00014 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (141, N'Hán', CAST(0.00014 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (142, N'Liên', CAST(0.00013 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (143, N'Lầu', CAST(0.00013 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (144, N'Tất', CAST(0.00013 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (145, N'Diêm', CAST(0.00013 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (146, N'Linh', CAST(0.00013 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (147, N'Ong', CAST(0.00013 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (148, N'Vòng', CAST(0.00013 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (149, N'Thị', CAST(0.00013 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (150, N'Tôn-thất', CAST(0.00012 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (151, N'Phó', CAST(0.00012 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (152, N'Quàng', CAST(0.00012 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (153, N'Cầm', CAST(0.00011 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (154, N'Viên', CAST(0.00011 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (155, N'Tưởng', CAST(0.00011 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (156, N'Uông', CAST(0.00011 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (157, N'Lù', CAST(0.00011 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (158, N'Hạ', CAST(0.00011 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (159, N'Phù', CAST(0.00010 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (160, N'Ngũ', CAST(0.00010 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (161, N'Bàng', CAST(0.00010 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (162, N'Trầm', CAST(0.00010 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (163, N'Ung', CAST(0.00010 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (164, N'Quảng', CAST(0.00010 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (165, N'Sử', CAST(0.00009 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (166, N'Lao', CAST(0.00009 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (167, N'Điểu', CAST(0.00009 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (168, N'Vưu', CAST(0.00009 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (169, N'Ân', CAST(0.00008 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (170, N'Cái', CAST(0.00008 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (171, N'Vừ', CAST(0.00008 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (172, N'Công', CAST(0.00008 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (173, N'Cam', CAST(0.00008 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (174, N'Lãnh', CAST(0.00008 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (175, N'Tòng', CAST(0.00008 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (176, N'Mẫn', CAST(0.00008 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (177, N'Kiên', CAST(0.00008 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (178, N'Chiêm', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (179, N'Lôi', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (180, N'Mùa', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (181, N'Vì', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (182, N'Cáp', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (183, N'Lành', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (184, N'Cà', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (185, N'Hoa', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (186, N'Lạc', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (187, N'Cổ', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (188, N'Sái', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (189, N'Cung', CAST(0.00007 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (190, N'Điền', CAST(0.00006 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (191, N'Tiền', CAST(0.00006 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (192, N'Xa', CAST(0.00006 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (193, N'Nay', CAST(0.00006 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (194, N'Du', CAST(0.00006 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (195, N'Tiết', CAST(0.00006 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (196, N'Luyện', CAST(0.00006 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (197, N'Chẩu', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (198, N'Phú', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (199, N'Nguyên', CAST(0.00005 AS Decimal(10, 5)))
GO
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (200, N'Bá', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (201, N'Sằm', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (202, N'Tân', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (203, N'Thang', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (204, N'Hòa', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (205, N'Thới', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (206, N'Chương', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (207, N'Lều', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (208, N'Khiếu', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (209, N'Tạc', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (210, N'Niê', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (211, N'Hùng', CAST(0.00005 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (212, N'Lỗ', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (213, N'Đổng', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (214, N'Lợi', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (215, N'Thiệu', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (216, N'Lộ', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (217, N'Moong', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (218, N'Ca', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (219, N'Tẩn', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (220, N'Tằng', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (221, N'Đại', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (222, N'Bằng', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (223, N'Điêu', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (224, N'Lèng', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (225, N'Khấu', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (226, N'Bồ', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (227, N'Ban', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (228, N'Mó', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (229, N'Đăng', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (230, N'Hờ', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (231, N'Lu', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (232, N'Quyền', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (233, N'Ly', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (234, N'Mạnh', CAST(0.00004 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (235, N'Thượng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (236, N'Cụt', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (237, N'Sa', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (238, N'Phàn', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (239, N'Giản', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (240, N'Ưng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (241, N'Mầu', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (242, N'Tráng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (243, N'Và', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (244, N'Xồng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (245, N'Hạc', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (246, N'Lỳ', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (247, N'Rơ', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (248, N'Phi', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (249, N'Trác', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (250, N'Bảo', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (251, N'Tao', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (252, N'Tường', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (253, N'Trung', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (254, N'Hạng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (255, N'Thủy', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (256, N'Ứng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (257, N'Văng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (258, N'Mang', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (259, N'Lo', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (260, N'Toàn', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (261, N'Đằng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (262, N'Chúc', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (263, N'Giảng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (264, N'Đông', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (265, N'Chảo', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (266, N'Ngôn', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (267, N'Sần', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (268, N'Đàng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (269, N'Trì', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (270, N'Chí', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (271, N'Tần', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (272, N'Thành', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (273, N'Đầu', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (274, N'Phòng', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (275, N'Ô', CAST(0.00003 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (276, N'Khuông', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (277, N'Duy', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (278, N'Chìu', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (279, N'Quán', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (280, N'Cồ', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (281, N'Đan', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (282, N'Ngạc', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (283, N'Hỏa', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (284, N'Tiên', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (285, N'Thổ', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (286, N'Đống', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (287, N'Lỷ', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (288, N'Hướng', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (289, N'Trạc', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (290, N'Quế', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (291, N'Khà', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (292, N'Vĩnh', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (293, N'Tán', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (294, N'Đèo', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (295, N'Mè', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (296, N'Yên', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (297, N'Liêng', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (298, N'Diệc', CAST(0.00002 AS Decimal(10, 5)))
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (299, N'Man', CAST(0.00002 AS Decimal(10, 5)))
GO
INSERT [dbo].[FirstName] ([Số thứ tự], [Họ], [Tỉ lệ]) VALUES (300, N'Cát', CAST(0.00001 AS Decimal(10, 5)))
SET IDENTITY_INSERT [dbo].[FirstName] OFF
GO
SET IDENTITY_INSERT [dbo].[PopularNamesFemale] ON 

INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (1, N'Anh', CAST(0.071 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (2, N'Vy', CAST(0.057 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (3, N'Ngọc', CAST(0.043 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (4, N'Nhi', CAST(0.042 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (5, N'Hân', CAST(0.041 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (6, N'Thư', CAST(0.041 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (7, N'Linh', CAST(0.035 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (8, N'Như', CAST(0.031 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (9, N'Ngân', CAST(0.030 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (10, N'Phương', CAST(0.021 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (11, N'Thảo', CAST(0.021 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (12, N'My', CAST(0.021 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (13, N'Trân', CAST(0.018 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (14, N'Quỳnh', CAST(0.018 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (15, N'Nghi', CAST(0.017 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (16, N'Trang', CAST(0.017 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (17, N'Trâm', CAST(0.016 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (18, N'An', CAST(0.016 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (19, N'Thy', CAST(0.015 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (20, N'Châu', CAST(0.015 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (21, N'Trúc', CAST(0.015 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (22, N'Uyên', CAST(0.014 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (23, N'Yến', CAST(0.014 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (24, N'Ý', CAST(0.012 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (25, N'Tiên', CAST(0.011 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (26, N'Mai', CAST(0.011 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (27, N'Hà', CAST(0.010 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (28, N'Vân', CAST(0.010 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (29, N'Nguyên', CAST(0.009 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (30, N'Hương', CAST(0.009 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (31, N'Quyên', CAST(0.008 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (32, N'Duyên', CAST(0.008 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (33, N'Kim', CAST(0.008 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (34, N'Trinh', CAST(0.007 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (35, N'Thanh', CAST(0.007 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (36, N'Tuyền', CAST(0.007 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (37, N'Hằng', CAST(0.007 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (38, N'Dương', CAST(0.007 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (39, N'Chi', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (40, N'Giang', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (41, N'Tâm', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (42, N'Lam', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (43, N'Tú', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (44, N'Ánh', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (45, N'Hiền', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (46, N'Khánh', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (47, N'Minh', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (48, N'Huyền', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (49, N'Thùy', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (50, N'Vi', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (51, N'Ly', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (52, N'Dung', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (53, N'Nhung', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (54, N'Phúc', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (55, N'Lan', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (56, N'Phụng', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (57, N'Ân', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (58, N'Thi', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (59, N'Khanh', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (60, N'Kỳ', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (61, N'Nga', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (62, N'Tường', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (63, N'Thúy', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (64, N'Mỹ', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (65, N'Hoa', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (66, N'Tuyết', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (67, N'Lâm', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (68, N'Thủy', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (69, N'Đan', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (70, N'Hạnh', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (71, N'Xuân', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (72, N'Oanh', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (73, N'Mẫn', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (74, N'Khuê', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (75, N'Diệp', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (76, N'Thương', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (77, N'Nhiên', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (78, N'Băng', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (79, N'Hồng', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (80, N'Bình', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (81, N'Loan', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (82, N'Thơ', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (83, N'Phượng', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (84, N'Mi', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (85, N'Nhã', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (86, N'Nguyệt', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (87, N'Bích', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (88, N'Đào', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (89, N'Diễm', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (90, N'Kiều', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (91, N'Hiếu', CAST(0.001 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (92, N'Di', CAST(0.001 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (93, N'Liên', CAST(0.001 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (94, N'Trà', CAST(0.001 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (95, N'Tuệ', CAST(0.001 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (96, N'Thắm', CAST(0.001 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (97, N'Diệu', CAST(0.001 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (98, N'Quân', CAST(0.001 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (99, N'Nhàn', CAST(0.001 AS Decimal(10, 3)))
GO
INSERT [dbo].[PopularNamesFemale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (100, N'Doanh', CAST(0.001 AS Decimal(10, 3)))
SET IDENTITY_INSERT [dbo].[PopularNamesFemale] OFF
GO
SET IDENTITY_INSERT [dbo].[PopularNamesMale] ON 

INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (1, N'Huy', CAST(0.049 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (2, N'Khang', CAST(0.042 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (3, N'Bảo', CAST(0.041 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (4, N'Minh', CAST(0.030 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (5, N'Phúc', CAST(0.029 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (6, N'Anh', CAST(0.027 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (7, N'Khoa', CAST(0.026 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (8, N'Phát', CAST(0.025 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (9, N'Đạt', CAST(0.025 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (10, N'Khôi', CAST(0.022 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (11, N'Long', CAST(0.020 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (12, N'Nam', CAST(0.019 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (13, N'Duy', CAST(0.018 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (14, N'Quân', CAST(0.017 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (15, N'Kiệt', CAST(0.017 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (16, N'Thịnh', CAST(0.016 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (17, N'Tuấn', CAST(0.015 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (18, N'Hưng', CAST(0.015 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (19, N'Hoàng', CAST(0.015 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (20, N'Hiếu', CAST(0.014 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (21, N'Nhân', CAST(0.014 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (22, N'Trí', CAST(0.014 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (23, N'Tài', CAST(0.013 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (24, N'Phong', CAST(0.013 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (25, N'Nguyên', CAST(0.012 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (26, N'An', CAST(0.012 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (27, N'Phú', CAST(0.012 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (28, N'Thành', CAST(0.012 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (29, N'Đức', CAST(0.011 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (30, N'Dũng', CAST(0.011 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (31, N'Lộc', CAST(0.010 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (32, N'Khánh', CAST(0.010 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (33, N'Vinh', CAST(0.010 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (34, N'Tiến', CAST(0.010 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (35, N'Nghĩa', CAST(0.009 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (36, N'Thiện', CAST(0.009 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (37, N'Hào', CAST(0.009 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (38, N'Hải', CAST(0.008 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (39, N'Đăng', CAST(0.008 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (40, N'Quang', CAST(0.008 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (41, N'Lâm', CAST(0.008 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (42, N'Nhật', CAST(0.008 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (43, N'Trung', CAST(0.007 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (44, N'Thắng', CAST(0.007 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (45, N'Tú', CAST(0.007 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (46, N'Hùng', CAST(0.007 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (47, N'Tâm', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (48, N'Sang', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (49, N'Sơn', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (50, N'Thái', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (51, N'Cường', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (52, N'Vũ', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (53, N'Toàn', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (54, N'Ân', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (55, N'Thuận', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (56, N'Bình', CAST(0.006 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (57, N'Trường', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (58, N'Danh', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (59, N'Kiên', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (60, N'Phước', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (61, N'Thiên', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (62, N'Tân', CAST(0.005 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (63, N'Việt', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (64, N'Khải', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (65, N'Tín', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (66, N'Dương', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (67, N'Tùng', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (68, N'Quý', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (69, N'Hậu', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (70, N'Trọng', CAST(0.004 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (71, N'Triết', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (72, N'Luân', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (73, N'Phương', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (74, N'Quốc', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (75, N'Thông', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (76, N'Khiêm', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (77, N'Hòa', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (78, N'Thanh', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (79, N'Tường', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (80, N'Kha', CAST(0.003 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (81, N'Vỹ', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (82, N'Bách', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (83, N'Khanh', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (84, N'Mạnh', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (85, N'Lợi', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (86, N'Đại', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (87, N'Hiệp', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (88, N'Đông', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (89, N'Nhựt', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (90, N'Giang', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (91, N'Kỳ', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (92, N'Phi', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (93, N'Tấn', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (94, N'Văn', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (95, N'Vương', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (96, N'Công', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (97, N'Hiển', CAST(0.002 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (98, N'Linh', CAST(0.001 AS Decimal(10, 3)))
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (99, N'Ngọc', CAST(0.001 AS Decimal(10, 3)))
GO
INSERT [dbo].[PopularNamesMale] ([Số thứ tự], [Tên], [Tỉ lệ]) VALUES (100, N'Vĩ', CAST(0.001 AS Decimal(10, 3)))
SET IDENTITY_INSERT [dbo].[PopularNamesMale] OFF
GO
SET IDENTITY_INSERT [dbo].[SubandNamesFemale] ON 

INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (1, N'Anh Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (2, N'Gia Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (3, N'Bảo Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (4, N'Minh Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (5, N'Quỳnh Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (6, N'Yến Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (7, N'Quỳnh Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (8, N'Kim Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (9, N'Bảo Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (10, N'Tường Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (11, N'Như Ý')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (12, N'Thanh Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (13, N'Ngọc Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (14, N'Như Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (15, N'Minh Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (16, N'Phương Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (17, N'Bảo Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (18, N'Phương Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (19, N'Khánh Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (20, N'Bảo Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (21, N'Thanh Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (22, N'Phương Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (23, N'Thảo Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (24, N'Phương Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (25, N'Bảo Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (26, N'Trâm Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (27, N'Khánh Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (28, N'Khánh Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (29, N'Thủy Tiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (30, N'Trà My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (31, N'Phương Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (32, N'Thiên Kim')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (33, N'Thảo Nguyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (34, N'Phương Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (35, N'Thùy Dương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (36, N'Thanh Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (37, N'Ngọc Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (38, N'Minh Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (39, N'Vân Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (40, N'Thùy Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (41, N'Thùy Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (42, N'Lan Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (43, N'Tuyết Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (44, N'Yến Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (45, N'Bảo Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (46, N'Ngọc Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (47, N'Thảo My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (48, N'Thanh Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (49, N'Hải Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (50, N'Bảo Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (51, N'Thanh Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (52, N'Ngọc Ánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (53, N'Mỹ Duyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (54, N'Hồng Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (55, N'Thanh Tuyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (56, N'Thúy Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (57, N'Cát Tường')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (58, N'Gia Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (59, N'Kim Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (60, N'Bảo Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (61, N'Phương Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (62, N'Hoàng Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (63, N'Ngọc Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (64, N'Như Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (65, N'Gia Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (66, N'Quỳnh Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (67, N'Mai Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (68, N'Thanh Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (69, N'Xuân Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (70, N'Bảo Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (71, N'Phương Trinh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (72, N'Thảo Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (73, N'Bảo Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (74, N'Kim Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (75, N'Cẩm Tú')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (76, N'Hà My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (77, N'Bích Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (78, N'Ngọc Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (79, N'Tâm Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (80, N'Diễm My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (81, N'Huỳnh Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (82, N'Ngọc Diệp')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (83, N'Quỳnh Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (84, N'Hương Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (85, N'Minh Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (86, N'Ánh Dương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (87, N'Trúc Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (88, N'Phương Thùy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (89, N'Ngọc Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (90, N'Hoàng Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (91, N'Thanh Tâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (92, N'Bảo Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (93, N'Mai Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (94, N'Khánh An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (95, N'Khánh Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (96, N'Ngọc Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (97, N'Minh Hằng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (98, N'Ngọc Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (99, N'Kim Yến')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (100, N'Ngọc Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (101, N'Ngọc Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (102, N'Bích Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (103, N'Thanh Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (104, N'Phương Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (105, N'Anh Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (106, N'Ngọc Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (107, N'Yến Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (108, N'Thanh Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (109, N'Uyên Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (110, N'Xuân Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (111, N'Thanh Thúy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (112, N'Khánh Băng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (113, N'Ngọc Bích')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (114, N'Minh Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (115, N'Cẩm Tiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (116, N'Mỹ Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (117, N'Tường Vi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (118, N'Kim Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (119, N'Thùy Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (120, N'Khánh Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (121, N'Ngọc Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (122, N'Bảo Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (123, N'Phương Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (124, N'Hồng Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (125, N'Minh Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (126, N'Thúy An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (127, N'Thu Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (128, N'Tú Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (129, N'Linh Đan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (130, N'Mỹ Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (131, N'Nhã Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (132, N'Thanh Hằng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (133, N'Huyền Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (134, N'Minh Khuê')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (135, N'Mỹ Tiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (136, N'Khánh Ly')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (137, N'Ngọc Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (138, N'Hồng Nhung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (139, N'Kim Phụng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (140, N'Ngọc Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (141, N'Thu Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (142, N'Ánh Tuyết')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (143, N'Hà Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (144, N'Hồng Ân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (145, N'Hoàng Kim')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (146, N'Hoài Thương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (147, N'Hồng Phúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (148, N'Diễm Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (149, N'Nam Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (150, N'Minh Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (151, N'Ngọc Huyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (152, N'Kỳ Duyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (153, N'Nhã Kỳ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (154, N'Minh Tâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (155, N'Thanh Thủy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (156, N'Khánh Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (157, N'Khánh Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (158, N'Thu Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (159, N'Trúc Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (160, N'Ngọc Tuyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (161, N'Kim Khánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (162, N'Hà Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (163, N'Huyền Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (164, N'Hoài An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (165, N'Yến Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (166, N'Ánh Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (167, N'Ngọc Trinh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (168, N'Thu Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (169, N'Thanh Xuân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (170, N'Trúc Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (171, N'Thanh Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (172, N'Thùy Lâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (173, N'Bảo Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (174, N'Ngọc Lan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (175, N'Khánh Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (176, N'Yến Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (177, N'Gia Mẫn')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (178, N'Hà Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (179, N'An Nhiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (180, N'Hải My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (181, N'Kim Tuyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (182, N'Lan Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (183, N'Xuân Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (184, N'Tuyết Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (185, N'Hồng Thắm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (186, N'Thanh Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (187, N'Quỳnh Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (188, N'Thúy Hằng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (189, N'Kim Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (190, N'Yến Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (191, N'Trúc Ly')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (192, N'Mỹ Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (193, N'Khả Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (194, N'Thanh Nhã')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (195, N'Tuyết Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (196, N'Kiều Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (197, N'Gia An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (198, N'Hồng Hạnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (199, N'Ngọc Khánh')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (200, N'Thiên Ân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (201, N'Thanh Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (202, N'Bảo Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (203, N'Thanh Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (204, N'Ngọc Giàu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (205, N'Thu Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (206, N'Minh Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (207, N'Thùy Dung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (208, N'Hà Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (209, N'Phương Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (210, N'Tuyết Nhung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (211, N'Tường Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (212, N'Minh Thùy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (213, N'Thanh Nhàn')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (214, N'Trúc Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (215, N'Trúc Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (216, N'Quỳnh Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (217, N'Kiều My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (218, N'Thiên Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (219, N'Thanh Huyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (220, N'Minh Tú')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (221, N'Tuyết Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (222, N'Khánh Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (223, N'Uyên Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (224, N'Thiên An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (225, N'Mỹ Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (226, N'Phi Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (227, N'Mỹ Tâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (228, N'Ngọc Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (229, N'Huỳnh Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (230, N'Thu Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (231, N'Hoàng Oanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (232, N'Minh Nguyệt')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (233, N'Nhật Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (234, N'Thảo Ly')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (235, N'Thủy Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (236, N'Gia Tuệ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (237, N'Tú Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (238, N'Khánh Huyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (239, N'Ngọc Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (240, N'Kiều Oanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (241, N'Ngọc Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (242, N'Ngọc Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (243, N'Ngân Khánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (244, N'Bảo Thi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (245, N'Thiên Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (246, N'Thùy Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (247, N'Anh Thơ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (248, N'Tường Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (249, N'Ánh Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (250, N'Thảo Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (251, N'Thiên Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (252, N'Quỳnh Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (253, N'Khánh Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (254, N'Bảo Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (255, N'Diệu Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (256, N'Mai Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (257, N'Đông Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (258, N'Hồng Ánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (259, N'Ngân Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (260, N'Quỳnh Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (261, N'Hải Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (262, N'Thảo Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (263, N'Ngọc Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (264, N'Song Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (265, N'Tú Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (266, N'Thúy Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (267, N'Thảo Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (268, N'Kim Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (269, N'Nhã Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (270, N'Lê Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (271, N'Thảo Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (272, N'Phương Dung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (273, N'Ngọc Diễm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (274, N'Uyển Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (275, N'Quỳnh Giao')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (276, N'Ý Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (277, N'Ngọc Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (278, N'Thanh Trà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (279, N'Bảo An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (280, N'Quế Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (281, N'Châu Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (282, N'Yến Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (283, N'Hoàng Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (284, N'Hoàng Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (285, N'Kiều Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (286, N'Thanh Thùy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (287, N'Mỹ Dung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (288, N'Thanh Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (289, N'Mai Khanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (290, N'Thảo Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (291, N'Thanh Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (292, N'Phương Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (293, N'Linh Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (294, N'Thùy An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (295, N'Bích Tuyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (296, N'Mỹ Hạnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (297, N'Bảo Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (298, N'Như Huỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (299, N'Ngọc Tiên')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (300, N'Mỹ Kim')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (301, N'Ngọc My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (302, N'Như Phúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (303, N'Minh An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (304, N'Mỹ Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (305, N'Khánh Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (306, N'Quỳnh Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (307, N'Phương Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (308, N'Thảo Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (309, N'Mỹ Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (310, N'Đoan Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (311, N'Hoàng My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (312, N'Thu Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (313, N'Thanh Tú')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (314, N'Minh Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (315, N'Thanh Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (316, N'Ái Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (317, N'Ngọc Duyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (318, N'Khánh Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (319, N'Đan Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (320, N'Xuân An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (321, N'Ngọc Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (322, N'Phương Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (323, N'Quỳnh Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (324, N'Ngọc Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (325, N'Ngọc Phụng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (326, N'Mỹ An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (327, N'Quỳnh Hoa')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (328, N'Thúy Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (329, N'Vân Khánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (330, N'Ngọc Mỹ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (331, N'Phương An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (332, N'Ngọc Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (333, N'Thu Thủy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (334, N'Tố Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (335, N'Thu Huyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (336, N'Minh Ánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (337, N'Mỹ Phụng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (338, N'Mẫn Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (339, N'Cẩm Ly')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (340, N'Kiều Trinh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (341, N'Mai Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (342, N'Phương Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (343, N'Tú Trinh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (344, N'Trúc Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (345, N'Gia Mỹ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (346, N'Hoàng Lan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (347, N'Diễm Hằng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (348, N'Gia Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (349, N'Minh Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (350, N'Ngọc Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (351, N'Hồng Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (352, N'Kiều Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (353, N'Phúc An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (354, N'Trúc Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (355, N'Cát Tiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (356, N'Kim Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (357, N'Hạnh Nguyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (358, N'Thùy Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (359, N'Hoài Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (360, N'Hoàng Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (361, N'Hoàng Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (362, N'Bình An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (363, N'Minh Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (364, N'Ngọc Tuyết')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (365, N'Gia Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (366, N'Mẫn Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (367, N'Thanh Nguyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (368, N'Ngọc Dung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (369, N'Gia Kỳ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (370, N'Tuyết Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (371, N'Phương Thúy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (372, N'Thúy Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (373, N'Mai Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (374, N'Hồng Đào')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (375, N'Phương Khanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (376, N'Mỹ Huyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (377, N'Ngọc Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (378, N'Xuân Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (379, N'Quỳnh Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (380, N'Thiên Ý')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (381, N'Minh Tuyết')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (382, N'Khánh Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (383, N'Tú Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (384, N'Kim Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (385, N'Khánh Đan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (386, N'Kim Hằng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (387, N'Tuyết Trinh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (388, N'Thảo Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (389, N'Nhã Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (390, N'Anh Đào')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (391, N'Nhã Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (392, N'Quế Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (393, N'Ngọc An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (394, N'Bảo Khanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (395, N'Thảo Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (396, N'Phương Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (397, N'Mai Khôi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (398, N'Hồng Phượng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (399, N'Mỹ Ngân')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (400, N'Phương Nguyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (401, N'Hoàng Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (402, N'Khánh Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (403, N'Thư Kỳ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (404, N'Kim Thoa')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (405, N'Ánh Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (406, N'Đông Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (407, N'Kim Cương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (408, N'Ái My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (409, N'Thái An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (410, N'Tuệ Mẫn')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (411, N'Ái Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (412, N'Kim Dung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (413, N'Mỹ Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (414, N'Bảo Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (415, N'Triệu Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (416, N'Thanh Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (417, N'Ngọc Hiếu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (418, N'Mỹ Kỳ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (419, N'Mỹ Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (420, N'Cẩm Nhung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (421, N'Mỹ Hằng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (422, N'Anh Thi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (423, N'Thúy Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (424, N'Gia Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (425, N'Mai Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (426, N'Minh Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (427, N'Kim Nguyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (428, N'Mai Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (429, N'Khả Doanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (430, N'Thanh Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (431, N'Ngọc Tú')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (432, N'Linh Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (433, N'Nhật Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (434, N'Thu Hằng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (435, N'Bảo Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (436, N'Diệu Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (437, N'Gia Bảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (438, N'Kim Oanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (439, N'Lan Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (440, N'Thanh Bình')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (441, N'Phương Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (442, N'Kim Loan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (443, N'Hồng Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (444, N'Hoàng Dung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (445, N'Khánh My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (446, N'Kim Ánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (447, N'Kim Xuyến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (448, N'Ngọc Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (449, N'Thanh An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (450, N'Khả Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (451, N'Lan Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (452, N'Ngọc Thúy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (453, N'Tố Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (454, N'Kim Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (455, N'Kim Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (456, N'Bảo Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (457, N'Hoài Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (458, N'Gia Khánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (459, N'Trúc My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (460, N'Ngọc Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (461, N'Tuyết Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (462, N'Thảo Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (463, N'Thùy Duyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (464, N'Tâm Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (465, N'Ngọc Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (466, N'Thiên Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (467, N'Ngọc Phượng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (468, N'Thúy Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (469, N'Ngọc Tâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (470, N'Thảo Vi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (471, N'Hoàng Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (472, N'Như Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (473, N'Minh Thi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (474, N'Kim Tiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (475, N'Ánh Hồng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (476, N'Phương Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (477, N'Mỹ Trinh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (478, N'Mai Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (479, N'Quỳnh Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (480, N'Bích Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (481, N'Bảo Tiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (482, N'Hoàng Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (483, N'Hồng Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (484, N'Kỳ Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (485, N'Ánh Nguyệt')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (486, N'Thục Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (487, N'Thảo Tiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (488, N'Mỹ Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (489, N'Bảo My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (490, N'Quỳnh Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (491, N'Hà Mi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (492, N'Ái Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (493, N'Bảo Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (494, N'Thảo Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (495, N'Nhã Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (496, N'Kim Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (497, N'Yến My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (498, N'Khánh Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (499, N'Bảo Khánh')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (500, N'Kim Phượng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (501, N'Kim Xuân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (502, N'Mai Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (503, N'Phương Vi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (504, N'Quỳnh Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (505, N'Phương Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (506, N'Phương Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (507, N'Minh Hạnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (508, N'Hà Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (509, N'Mỹ Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (510, N'Tuệ Lâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (511, N'Bảo Nguyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (512, N'Minh Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (513, N'Uyên Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (514, N'Trà Mi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (515, N'An An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (516, N'Kiều Tiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (517, N'Ngọc Thủy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (518, N'Thục Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (519, N'Hồng Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (520, N'Ngọc Khuê')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (521, N'Nhã Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (522, N'Phương Lan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (523, N'Uyên Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (524, N'Ngọc Diệu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (525, N'Bích Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (526, N'Mai Lan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (527, N'Ngọc Hạnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (528, N'Trúc Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (529, N'Huỳnh Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (530, N'Phương My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (531, N'Mỹ Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (532, N'Trà Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (533, N'Trúc Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (534, N'Khánh Nguyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (535, N'Huệ Mẫn')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (536, N'Hạ Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (537, N'Uyên Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (538, N'Mỹ Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (539, N'Nhã Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (540, N'Hồng Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (541, N'Khánh Tâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (542, N'Thiên Phúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (543, N'Kim Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (544, N'Ngọc Hoa')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (545, N'Đỗ Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (546, N'Thúy Kiều')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (547, N'Xuân Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (548, N'Minh Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (549, N'Thanh Loan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (550, N'Phương Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (551, N'Bảo Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (552, N'Kim Phúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (553, N'Khánh Vi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (554, N'Ngọc Hằng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (555, N'Diệu Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (556, N'Nguyệt Ánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (557, N'Tố Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (558, N'Xuân Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (559, N'Tuyết My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (560, N'Thanh Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (561, N'Hà An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (562, N'Huyền Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (563, N'Kim Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (564, N'Khả Ái')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (565, N'Kim Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (566, N'Quỳnh My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (567, N'Khánh Thi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (568, N'Thiên Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (569, N'Anh Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (570, N'Bình Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (571, N'Minh Thơ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (572, N'Bội Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (573, N'Khả Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (574, N'Diễm Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (575, N'Tuyết Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (576, N'Thiên Di')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (577, N'Yến Vi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (578, N'Tuệ Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (579, N'Thảo Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (580, N'Việt Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (581, N'Băng Băng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (582, N'Tuyết Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (583, N'Xuân Hiếu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (584, N'Hồng Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (585, N'Huỳnh Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (586, N'Hương Trà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (587, N'Kim Thùy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (588, N'Hồng Gấm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (589, N'Nguyên Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (590, N'Lan Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (591, N'Nhật Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (592, N'Thanh Vi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (593, N'Kim Hồng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (594, N'Xuân Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (595, N'Thái Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (596, N'Thiên Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (597, N'Uyên Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (598, N'Ngọc Phúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (599, N'Ngọc Nguyên')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (600, N'Hải Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (601, N'Xuân Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (602, N'Mỹ Hoa')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (603, N'Bảo Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (604, N'Trúc Lâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (605, N'Xuân Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (606, N'Nhã Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (607, N'Mai Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (608, N'Thị Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (609, N'Mỹ Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (610, N'Phương Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (611, N'Minh Hiếu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (612, N'Tú Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (613, N'Mỹ Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (614, N'Thiên Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (615, N'Quỳnh Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (616, N'Quế Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (617, N'Phương Nhã')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (618, N'An Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (619, N'Minh Tuệ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (620, N'Gia Ân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (621, N'Kim Hoa')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (622, N'Thu Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (623, N'Mỹ Tú')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (624, N'Hoàng Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (625, N'Bích Thủy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (626, N'Bảo Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (627, N'Hoàng Mỹ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (628, N'Hương Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (629, N'Kiều Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (630, N'Thu Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (631, N'Thanh Hoa')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (632, N'Phương Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (633, N'Vân An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (634, N'Ngọc Quý')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (635, N'Hoàng Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (636, N'Thanh Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (637, N'Bích Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (638, N'Thiên Tú')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (639, N'Nhật Hạ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (640, N'Mộng Tuyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (641, N'Khánh Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (642, N'Kim Tuyến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (643, N'Tuyết Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (644, N'Phi Phụng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (645, N'Thanh Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (646, N'Khả Tú')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (647, N'An Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (648, N'Hải Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (649, N'Kiều Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (650, N'Thùy Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (651, N'Gia Huệ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (652, N'Kim Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (653, N'Xuân Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (654, N'Tường Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (655, N'Thiên Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (656, N'Bích Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (657, N'Mai Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (658, N'Xuân Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (659, N'Diễm Kiều')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (660, N'Kiều Diễm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (661, N'Mai Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (662, N'Kim Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (663, N'Diễm Trinh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (664, N'Tuyết Lan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (665, N'Lam Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (666, N'Thiên Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (667, N'Hải Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (668, N'Hồng Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (669, N'Dạ Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (670, N'Diễm Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (671, N'Phương Khánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (672, N'Tú Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (673, N'Hồng Duyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (674, N'Kim Duyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (675, N'Tuyết Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (676, N'Xuân Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (677, N'Hoàng Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (678, N'Nhật Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (679, N'Mai An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (680, N'Hoàng Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (681, N'Khánh Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (682, N'Gia Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (683, N'Minh Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (684, N'Gia Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (685, N'Thanh Tiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (686, N'Kiều Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (687, N'Kim Hoàng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (688, N'Ngọc Thi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (689, N'Khánh Đoan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (690, N'Ái Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (691, N'Thiên Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (692, N'Anh Tú')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (693, N'Bích Hằng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (694, N'Ngọc Nhung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (695, N'Minh Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (696, N'Ánh Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (697, N'Quỳnh An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (698, N'Kim Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (699, N'Bích Trân')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (700, N'Ngân Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (701, N'Mỹ Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (702, N'Anh Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (703, N'Như Bình')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (704, N'Tâm Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (705, N'Cẩm Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (706, N'Thục Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (707, N'Như Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (708, N'Mỹ Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (709, N'Đan Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (710, N'Mai Thi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (711, N'Quỳnh Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (712, N'Ngọc Thùy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (713, N'Thúy Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (714, N'Hồng Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (715, N'Nhã Khanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (716, N'Hoàng Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (717, N'Kim Huyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (718, N'Thu Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (719, N'Thu Hồng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (720, N'Minh Khánh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (721, N'Phi Nhung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (722, N'Khánh Tiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (723, N'Vân Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (724, N'Ngọc Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (725, N'Ngọc Xuân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (726, N'Thanh Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (727, N'Kim Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (728, N'Thùy Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (729, N'Trang Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (730, N'Yến Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (731, N'Hồng Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (732, N'Lan Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (733, N'Ngọc Tiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (734, N'Lâm Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (735, N'Tuyết Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (736, N'Kim Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (737, N'Hồng Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (738, N'Tuệ Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (739, N'Diệu Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (740, N'Cẩm Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (741, N'Hồng Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (742, N'Hương Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (743, N'Đan Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (744, N'Gia Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (745, N'Bích Phượng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (746, N'Nhã Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (747, N'Tú Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (748, N'Nhã Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (749, N'Minh Hân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (750, N'Doanh Doanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (751, N'Hồng Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (752, N'Thảo Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (753, N'Tường An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (754, N'Tú Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (755, N'Xuân Hồng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (756, N'Huyền Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (757, N'Yến Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (758, N'Thúy Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (759, N'Phương Duyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (760, N'Gia Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (761, N'Trúc Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (762, N'Hồng Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (763, N'Hồng Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (764, N'Khánh Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (765, N'Quỳnh Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (766, N'Nguyệt Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (767, N'Khả Di')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (768, N'Bảo Kim')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (769, N'Minh Đan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (770, N'Hoàng Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (771, N'Minh Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (772, N'Hồng Loan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (773, N'Kiều Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (774, N'Như Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (775, N'Thanh Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (776, N'Mỹ Ý')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (777, N'Hải An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (778, N'Bích Huyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (779, N'San San')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (780, N'Minh Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (781, N'Thảo Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (782, N'Huyền Diệu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (783, N'Ngọc Oanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (784, N'Phương Nhung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (785, N'Anh Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (786, N'Nguyệt Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (787, N'Xuân Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (788, N'Thiên Lý')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (789, N'Nhã Đan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (790, N'Minh Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (791, N'Phương Tuyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (792, N'Thị Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (793, N'Gia Ngân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (794, N'Khánh Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (795, N'Gia Hy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (796, N'Kim Nhung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (797, N'Mai Trinh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (798, N'Thu An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (799, N'Băng Tâm')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (800, N'Kim Huệ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (801, N'Kim Liên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (802, N'Mỹ Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (803, N'Phương Oanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (804, N'Hồng Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (805, N'Hà Vi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (806, N'Bội San')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (807, N'Quỳnh Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (808, N'Thanh Lan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (809, N'Kim Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (810, N'Tường Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (811, N'Thúy Vi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (812, N'Hải Băng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (813, N'Ngọc Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (814, N'Diễm Phúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (815, N'Tuyết Sương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (816, N'Trường An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (817, N'Tú Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (818, N'Hồng Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (819, N'An Bình')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (820, N'Bích Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (821, N'Minh Tuyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (822, N'Minh Thu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (823, N'Uyển My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (824, N'Gia Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (825, N'Thiên Thiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (826, N'Ý Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (827, N'Ngọc Liên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (828, N'Như Tâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (829, N'Thùy Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (830, N'Thị Hiền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (831, N'Thục Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (832, N'Thiên Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (833, N'Kim Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (834, N'Lan Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (835, N'Khánh Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (836, N'Hải Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (837, N'Nhật Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (838, N'Ánh Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (839, N'Ngọc Ý')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (840, N'Kim Thơ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (841, N'Kim Hoàn')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (842, N'Gia Phúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (843, N'Minh Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (844, N'Ánh Xuân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (845, N'Nhật Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (846, N'Trúc Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (847, N'Mỹ Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (848, N'Ngọc Kim')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (849, N'Hà Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (850, N'Tâm Đoan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (851, N'Tuyết Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (852, N'Linh Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (853, N'Tuyết Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (854, N'Bội Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (855, N'Khởi My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (856, N'Thúy Diễm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (857, N'Ngọc Loan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (858, N'Bảo Di')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (859, N'Hiền Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (860, N'Mỹ Lan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (861, N'Yến Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (862, N'Giáng My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (863, N'Kiều Duyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (864, N'Thanh Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (865, N'Yến Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (866, N'Hồng Thủy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (867, N'Kim Thúy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (868, N'Ngọc Vi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (869, N'Như Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (870, N'Vân Khanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (871, N'Thanh Thương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (872, N'Ngọc Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (873, N'Ngọc Thu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (874, N'Chi Mai')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (875, N'Mỹ Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (876, N'Vy Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (877, N'Lam Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (878, N'Mỹ Nhung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (879, N'Nam Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (880, N'Băng Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (881, N'Bội Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (882, N'Thu Giang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (883, N'Ngọc Hồng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (884, N'Thanh Phúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (885, N'Như Nguyệt')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (886, N'Thu Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (887, N'Đan Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (888, N'Tiểu My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (889, N'Tâm An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (890, N'Khánh Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (891, N'Minh Huyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (892, N'Trân Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (893, N'Uyên Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (894, N'Hồng Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (895, N'Kiều Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (896, N'Bảo Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (897, N'Thị Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (898, N'Hồng Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (899, N'Bảo Ân')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (900, N'Mỹ Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (901, N'Kim Uyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (902, N'Minh Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (903, N'Thảo Mi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (904, N'Hồng Liên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (905, N'Hiếu Thảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (906, N'Ngọc Sương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (907, N'Uyển Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (908, N'Tú Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (909, N'Thanh Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (910, N'Kỳ Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (911, N'Mỹ Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (912, N'Mỹ Hương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (913, N'Tùng Chi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (914, N'Ngọc Ngà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (915, N'Hoàn Mỹ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (916, N'Thanh Hồng')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (917, N'Anh Trúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (918, N'Hạnh Dung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (919, N'Thu Ngọc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (920, N'Thảo Trinh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (921, N'Diệu Huyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (922, N'Uyên Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (923, N'Bích Loan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (924, N'Bảo Phúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (925, N'Gia Khanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (926, N'Thu Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (927, N'Thanh Kiều')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (928, N'Hoài Ân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (929, N'Khánh Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (930, N'Huỳnh Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (931, N'Thảo Nhiên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (932, N'Mỹ Tuyền')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (933, N'Hồng Hoa')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (934, N'Trúc Quân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (935, N'Hoài Thu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (936, N'Hoàng Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (937, N'Mỹ Liên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (938, N'Thị Trang')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (939, N'Lê Khanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (940, N'Phụng Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (941, N'Nhật Lam')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (942, N'Ngọc Thắm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (943, N'Bích Như')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (944, N'Hà Thanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (945, N'Gia Hảo')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (946, N'Khánh Duyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (947, N'Mỹ Khanh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (948, N'Thùy Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (949, N'Lệ Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (950, N'Thanh Chúc')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (951, N'Trúc Diễm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (952, N'Ngân Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (953, N'Trang Nhung')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (954, N'Nhã Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (955, N'Kỳ Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (956, N'Thiên Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (957, N'Linh Phương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (958, N'Hồng Nga')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (959, N'Hồng Diễm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (960, N'Phương Hà')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (961, N'Hạnh Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (962, N'Cẩm Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (963, N'Thảo Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (964, N'Huệ Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (965, N'Minh Quyên')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (966, N'Mỹ Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (967, N'Xuân Thùy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (968, N'Đan Thư')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (969, N'Nguyên Anh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (970, N'Nhật Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (971, N'Hạ My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (972, N'Hồng My')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (973, N'Thái Bình')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (974, N'Mai Quỳnh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (975, N'Hoàng An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (976, N'Ánh Nhi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (977, N'Ái Vân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (978, N'Thu Nguyệt')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (979, N'Kiều Trâm')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (980, N'Hương Lan')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (981, N'Minh Thương')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (982, N'Ly Na')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (983, N'Tuệ Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (984, N'Bảo Kỳ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (985, N'Phương Yến')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (986, N'Kim Thy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (987, N'Tường Linh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (988, N'Đình Đình')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (989, N'Như Tuyết')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (990, N'Trân Châu')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (991, N'Tuệ Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (992, N'Trường Vy')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (993, N'Quỳnh Nghi')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (994, N'Thu Hoài')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (995, N'Bảo Minh')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (996, N'Trúc An')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (997, N'Tuyết Trân')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (998, N'Ngọc Thơ')
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (999, N'Yến Trân')
GO
INSERT [dbo].[SubandNamesFemale] ([Số thứ tự], [Tên đệm và tên]) VALUES (1000, N'Hồng Uyên')
SET IDENTITY_INSERT [dbo].[SubandNamesFemale] OFF
GO
SET IDENTITY_INSERT [dbo].[SubandNamesMale] ON 

INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (1, N'Gia Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (2, N'Gia Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (3, N'Đăng Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (4, N'Anh Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (5, N'Minh Quân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (6, N'Minh Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (7, N'Minh Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (8, N'Thành Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (9, N'Hoàng Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (10, N'Tuấn Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (11, N'Tấn Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (12, N'Minh Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (13, N'Tuấn Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (14, N'Anh Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (15, N'Hoàng Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (16, N'Minh Nhật')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (17, N'Đăng Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (18, N'Quốc Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (19, N'Quốc Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (20, N'Anh Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (21, N'Anh Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (22, N'Minh Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (23, N'Huy Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (24, N'Gia Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (25, N'Minh Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (26, N'Minh Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (27, N'Hải Đăng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (28, N'Thành Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (29, N'Thiên Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (30, N'Trung Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (31, N'Nhật Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (32, N'Thanh Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (33, N'Hoàng Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (34, N'Tiến Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (35, N'Minh Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (36, N'Hoàng Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (37, N'Quang Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (38, N'Hoàng Quân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (39, N'Duy Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (40, N'Trung Kiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (41, N'Hoàng Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (42, N'Tuấn Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (43, N'Quốc Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (44, N'Quang Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (45, N'Gia Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (46, N'Thành Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (47, N'Tấn Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (48, N'Nhật Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (49, N'Tấn Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (50, N'Bảo Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (51, N'Minh Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (52, N'Tấn Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (53, N'Gia Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (54, N'Khôi Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (55, N'Minh Triết')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (56, N'Minh Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (57, N'Thiên Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (58, N'Đức Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (59, N'Quang Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (60, N'Minh Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (61, N'Minh Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (62, N'Đức Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (63, N'Quốc Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (64, N'Phúc Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (65, N'Anh Quân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (66, N'Minh Đăng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (67, N'Thiên Ân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (68, N'Bảo Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (69, N'Hoàng Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (70, N'Minh Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (71, N'Thiện Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (72, N'Khánh Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (73, N'Trọng Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (74, N'Quốc Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (75, N'Thành Danh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (76, N'Trọng Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (77, N'Quốc Thái')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (78, N'Gia Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (79, N'Minh Tâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (80, N'Gia Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (81, N'Quốc Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (82, N'Thanh Bình')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (83, N'Thành Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (84, N'Phi Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (85, N'Quốc Việt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (86, N'Hoàng Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (87, N'Minh Quang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (88, N'Thiên Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (89, N'Phúc Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (90, N'Minh Thuận')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (91, N'Anh Tú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (92, N'Bảo Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (93, N'Duy Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (94, N'Gia Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (95, N'Minh Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (96, N'Minh Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (97, N'Quốc Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (98, N'Nguyên Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (99, N'Minh Duy')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (100, N'Trọng Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (101, N'Thanh Tùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (102, N'Gia Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (103, N'Nhật Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (104, N'Thành Trung')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (105, N'Quốc Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (106, N'Tiến Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (107, N'Hoài Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (108, N'Anh Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (109, N'Tiến Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (110, N'Gia Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (111, N'Đức Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (112, N'Bảo Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (113, N'Anh Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (114, N'Đức Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (115, N'Gia Khiêm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (116, N'Việt Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (117, N'Vĩnh Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (118, N'Thanh Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (119, N'Minh Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (120, N'Anh Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (121, N'Minh Nhựt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (122, N'Minh Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (123, N'Hồng Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (124, N'Thanh Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (125, N'Quốc An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (126, N'Quốc Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (127, N'Thanh Sang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (128, N'Gia Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (129, N'Quốc Cường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (130, N'Gia Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (131, N'Hoàng Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (132, N'Thành Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (133, N'An Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (134, N'Hoàng Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (135, N'Trung Tín')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (136, N'Hoàng Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (137, N'Bảo Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (138, N'Thanh Tú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (139, N'Đức Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (140, N'Minh Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (141, N'Trí Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (142, N'Đức Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (143, N'Trung Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (144, N'Tấn Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (145, N'Trọng Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (146, N'Anh Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (147, N'Hoàng Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (148, N'Đức Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (149, N'Phương Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (150, N'Trọng Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (151, N'Bình Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (152, N'Thái Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (153, N'Tuấn Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (154, N'Quốc Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (155, N'Nhật Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (156, N'Phúc Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (157, N'Thanh Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (158, N'Duy Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (159, N'Minh Thông')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (160, N'Hoàng Sơn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (161, N'Anh Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (162, N'Phú Quý')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (163, N'Tuấn Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (164, N'Khánh Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (165, N'Hoàng Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (166, N'Tuấn Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (167, N'Hải Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (168, N'Thanh Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (169, N'Minh Tú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (170, N'Nhật Quang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (171, N'Phước Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (172, N'Công Danh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (173, N'Anh Vũ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (174, N'Bảo Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (175, N'Thành Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (176, N'Thành Công')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (177, N'Trường Giang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (178, N'Quốc Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (179, N'Thanh Sơn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (180, N'Minh Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (181, N'Tấn Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (182, N'Thanh Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (183, N'Tuấn Tú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (184, N'Hoàng Ân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (185, N'Tấn Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (186, N'Tấn Sang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (187, N'Nguyên Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (188, N'Trường Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (189, N'Thế Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (190, N'Nhật Tân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (191, N'Quốc Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (192, N'Tuấn Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (193, N'Mạnh Hùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (194, N'Minh Tân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (195, N'Hữu Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (196, N'Hoàng Vũ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (197, N'Chí Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (198, N'Anh Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (199, N'Minh Trung')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (200, N'Minh Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (201, N'Nhật Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (202, N'Minh Sang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (203, N'Hoàng Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (204, N'Minh Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (205, N'Minh Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (206, N'Minh Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (207, N'Quốc Trung')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (208, N'Bảo Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (209, N'Thế Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (210, N'Minh Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (211, N'Công Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (212, N'Công Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (213, N'Thiên Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (214, N'Quốc Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (215, N'Trọng Tín')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (216, N'Tấn Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (217, N'Bảo Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (218, N'Thái Sơn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (219, N'Nhật Trường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (220, N'Hưng Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (221, N'Khánh Đăng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (222, N'Thanh Tâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (223, N'Quốc Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (224, N'Nam Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (225, N'Phúc An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (226, N'Minh Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (227, N'Khánh Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (228, N'Hiếu Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (229, N'Hoàng Thái')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (230, N'Anh Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (231, N'Hoàng Việt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (232, N'Gia An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (233, N'Hữu Phước')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (234, N'Minh Luân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (235, N'Hữu Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (236, N'Tiến Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (237, N'Quang Khải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (238, N'Tùng Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (239, N'Chí Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (240, N'Mạnh Cường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (241, N'Thành Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (242, N'Quốc Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (243, N'Nhật Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (244, N'Phi Hùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (245, N'Thành Tâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (246, N'Gia Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (247, N'Hoàng Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (248, N'Quốc Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (249, N'Gia Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (250, N'Minh Hùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (251, N'Thiên Phước')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (252, N'Gia Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (253, N'Hoàng Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (254, N'Duy Tân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (255, N'Minh Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (256, N'Bình An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (257, N'Ngọc Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (258, N'Quốc Hùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (259, N'Hoàng Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (260, N'Lê Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (261, N'Duy Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (262, N'Ngọc Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (263, N'Hoàng Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (264, N'Văn Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (265, N'Thanh Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (266, N'Phúc Hậu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (267, N'Duy Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (268, N'Công Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (269, N'Văn Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (270, N'Anh Quốc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (271, N'Hữu Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (272, N'Ngọc Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (273, N'Hoàng Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (274, N'Trung Hậu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (275, N'Minh Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (276, N'Thái Dương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (277, N'Minh Kha')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (278, N'Phát Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (279, N'Hữu Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (280, N'Minh Phương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (281, N'Phước Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (282, N'Tiến Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (283, N'Việt Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (284, N'Đức Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (285, N'Hữu Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (286, N'Đức Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (287, N'Hoàng Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (288, N'Quốc Bình')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (289, N'Tuấn Khải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (290, N'Tuấn Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (291, N'Hạo Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (292, N'Hoàng Bách')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (293, N'Thanh Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (294, N'Tấn Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (295, N'Đăng Quang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (296, N'Đức Mạnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (297, N'Tuấn Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (298, N'Hải Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (299, N'Hoàng Thông')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (300, N'Hoàng An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (301, N'Thái Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (302, N'Chí Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (303, N'Trường An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (304, N'Nhật Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (305, N'Hữu Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (306, N'Nam Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (307, N'Đình Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (308, N'Thanh Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (309, N'Chí Cường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (310, N'Phước Sang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (311, N'Hoàng Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (312, N'Minh Mẫn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (313, N'Ngọc Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (314, N'Duy Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (315, N'Hoài An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (316, N'Quang Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (317, N'Hữu Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (318, N'Văn Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (319, N'Hoài Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (320, N'Tuấn Khanh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (321, N'Hoàng Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (322, N'Bảo Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (323, N'Quang Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (324, N'Quốc Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (325, N'Tuấn Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (326, N'Phú Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (327, N'Văn Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (328, N'Quốc Đại')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (329, N'Nguyên Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (330, N'Nhật Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (331, N'Hoàng Thiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (332, N'Ngọc Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (333, N'Phú Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (334, N'Văn Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (335, N'Hoàng Gia')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (336, N'Hữu Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (337, N'Minh Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (338, N'Thiên Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (339, N'Quang Trường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (340, N'Chí Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (341, N'Tuấn Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (342, N'Tuấn Vũ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (343, N'Ngọc Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (344, N'Minh Thái')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (345, N'Thanh Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (346, N'Quốc Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (347, N'Hữu Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (348, N'Minh Hậu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (349, N'Văn Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (350, N'Văn Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (351, N'Quang Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (352, N'Chí Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (353, N'Nhật Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (354, N'Minh Vũ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (355, N'Quang Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (356, N'Hữu Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (357, N'Gia Thuận')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (358, N'Thanh Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (359, N'Thanh Phương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (360, N'Thuận Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (361, N'Minh Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (362, N'Chí Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (363, N'Minh Trường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (364, N'Minh Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (365, N'Ngọc Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (366, N'Thanh Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (367, N'Bảo An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (368, N'Trí Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (369, N'Chấn Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (370, N'Phú Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (371, N'Tấn Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (372, N'Minh Chiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (373, N'Thành Luân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (374, N'Duy Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (375, N'Gia Lạc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (376, N'Duy Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (377, N'Ngọc Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (378, N'Thanh Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (379, N'Duy Mạnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (380, N'Văn Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (381, N'Thái Bình')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (382, N'Tuấn An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (383, N'Hồng Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (384, N'Cao Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (385, N'Gia Vỹ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (386, N'Hữu Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (387, N'Phúc Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (388, N'Minh Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (389, N'Minh Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (390, N'Xuân Trường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (391, N'Hải Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (392, N'Trung Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (393, N'Thái Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (394, N'Phúc Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (395, N'Chí Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (396, N'Tấn Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (397, N'Văn Hậu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (398, N'Hoàng Phi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (399, N'Thế Bảo')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (400, N'Hải Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (401, N'Đức Trọng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (402, N'Đức Trung')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (403, N'Hồng Quân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (404, N'Đình Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (405, N'Kim Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (406, N'Bảo Khanh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (407, N'Vĩnh Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (408, N'Thanh Liêm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (409, N'Minh An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (410, N'Kỳ Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (411, N'Thanh Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (412, N'Thành Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (413, N'Gia Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (414, N'Đình Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (415, N'Thanh Hùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (416, N'Tấn Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (417, N'Văn Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (418, N'Quang Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (419, N'Thanh Quang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (420, N'Thanh Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (421, N'Phước Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (422, N'Trí Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (423, N'Đức Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (424, N'Đình Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (425, N'Thái An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (426, N'Thanh Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (427, N'Gia Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (428, N'Thanh Vũ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (429, N'Hoàng Sang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (430, N'Thành Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (431, N'Ngọc Sơn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (432, N'Đức Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (433, N'Gia Tường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (434, N'Huy Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (435, N'Đức Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (436, N'Xuân Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (437, N'Hoàng Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (438, N'Đức Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (439, N'Thanh Danh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (440, N'Bảo Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (441, N'Hoàng Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (442, N'Minh Trọng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (443, N'Hoàng Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (444, N'Minh Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (445, N'Tấn Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (446, N'Hoàng Hiệp')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (447, N'Quang Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (448, N'Vinh Quang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (449, N'Hữu Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (450, N'Thái Hòa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (451, N'Minh Thiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (452, N'Quang Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (453, N'Hoàng Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (454, N'Thanh Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (455, N'Khánh Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (456, N'Tuấn Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (457, N'Minh Cường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (458, N'Ngọc Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (459, N'Khánh Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (460, N'Phương Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (461, N'Hoàng Tú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (462, N'Thành Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (463, N'Khánh Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (464, N'Văn Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (465, N'Trí Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (466, N'Minh Sơn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (467, N'Trung Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (468, N'Hoàng Khải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (469, N'Đại Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (470, N'Quang Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (471, N'Nhật Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (472, N'Tấn Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (473, N'Thành An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (474, N'Thành Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (475, N'Bảo Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (476, N'Thiên An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (477, N'Thanh Tân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (478, N'Quốc Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (479, N'Mạnh Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (480, N'Mạnh Quân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (481, N'Quốc Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (482, N'Huy Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (483, N'Minh Quý')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (484, N'Minh Quốc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (485, N'Trí Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (486, N'Đại Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (487, N'Đăng Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (488, N'Duy An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (489, N'Tiến Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (490, N'Phú Trọng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (491, N'Khánh Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (492, N'Hồng Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (493, N'Lê Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (494, N'Thanh An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (495, N'Quang Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (496, N'Quang Trung')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (497, N'Quang Thái')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (498, N'Trường Sơn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (499, N'Việt Hưng')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (500, N'Chí Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (501, N'Phúc Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (502, N'Hải Dương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (503, N'Tấn An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (504, N'Tấn Phước')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (505, N'Duy Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (506, N'Duy Quang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (507, N'Xuân Bách')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (508, N'Thái Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (509, N'Chí Vỹ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (510, N'Anh Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (511, N'Quang Nhật')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (512, N'Gia Hy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (513, N'Hoàng Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (514, N'Gia Kỳ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (515, N'Văn Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (516, N'Hoài Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (517, N'Hồng Ân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (518, N'Hoàng Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (519, N'Khánh An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (520, N'Đông Quân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (521, N'Phúc Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (522, N'Nhựt Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (523, N'Trung Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (524, N'Hữu Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (525, N'Minh Phước')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (526, N'Hạo Nhiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (527, N'Thành Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (528, N'Chí Tâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (529, N'Phước Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (530, N'Văn Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (531, N'Văn Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (532, N'Hoàng Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (533, N'Huỳnh Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (534, N'Nguyên Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (535, N'Tiến Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (536, N'Phú Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (537, N'Trung Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (538, N'Khải Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (539, N'Đức Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (540, N'Thanh Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (541, N'Nam Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (542, N'Văn Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (543, N'Nhất Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (544, N'Tuấn Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (545, N'Trọng Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (546, N'Minh Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (547, N'Hải Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (548, N'Minh Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (549, N'Kim Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (550, N'Văn Trường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (551, N'Văn Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (552, N'Thế Danh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (553, N'Trường Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (554, N'Khánh Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (555, N'Hồng Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (556, N'Thiên Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (557, N'Quốc Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (558, N'Vĩnh Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (559, N'Quốc Thiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (560, N'Ngọc Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (561, N'Ngọc Quý')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (562, N'Hoàng Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (563, N'Anh Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (564, N'Tuấn Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (565, N'Quang Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (566, N'Công Hậu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (567, N'Thịnh Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (568, N'Văn Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (569, N'Đức Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (570, N'Gia Bình')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (571, N'Trường Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (572, N'Xuân Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (573, N'Xuân Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (574, N'Văn Quý')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (575, N'Thanh Hậu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (576, N'Vĩnh Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (577, N'Văn Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (578, N'Đức Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (579, N'Thanh Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (580, N'Thanh Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (581, N'Hoàng Phương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (582, N'Quốc Triệu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (583, N'Văn Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (584, N'Kiến Văn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (585, N'Ngọc Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (586, N'Gia Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (587, N'Quốc Trọng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (588, N'Trọng Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (589, N'Thành Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (590, N'Nhật Thiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (591, N'Gia Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (592, N'Văn Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (593, N'Hoàng Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (594, N'Trọng Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (595, N'Xuân Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (596, N'Anh Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (597, N'Trung Trực')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (598, N'Nhật Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (599, N'Bảo Châu')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (600, N'Kiến Quốc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (601, N'Minh Hiển')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (602, N'Ngọc Sang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (603, N'Kiến Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (604, N'Gia Ân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (605, N'Đức Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (606, N'Quang Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (607, N'Văn Sang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (608, N'Hùng Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (609, N'Minh Tấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (610, N'Kỳ Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (611, N'Văn Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (612, N'Tuấn Hùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (613, N'Chí Kiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (614, N'Hoàng Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (615, N'Thanh Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (616, N'Việt Hùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (617, N'Thế Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (618, N'Đình Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (619, N'Hữu Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (620, N'Minh Châu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (621, N'Hùng Cường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (622, N'Ngọc Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (623, N'Duy Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (624, N'Hữu Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (625, N'Ngọc Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (626, N'Đình Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (627, N'Phát Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (628, N'Hữu Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (629, N'Quang Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (630, N'Minh Khải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (631, N'Lê Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (632, N'Phúc Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (633, N'Minh Hòa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (634, N'Thành Thái')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (635, N'Hữu Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (636, N'Trung Tính')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (637, N'Thái Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (638, N'Việt Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (639, N'Ngọc Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (640, N'Xuân Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (641, N'Văn Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (642, N'Quốc Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (643, N'Văn Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (644, N'Trung Quân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (645, N'Đức Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (646, N'Vĩnh Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (647, N'Hiển Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (648, N'Duy Phương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (649, N'Cao Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (650, N'Vũ Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (651, N'Phú Cường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (652, N'Bảo Thiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (653, N'Hữu Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (654, N'Xuân Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (655, N'Chí Thanh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (656, N'Phú Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (657, N'Trường Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (658, N'Huy Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (659, N'Vũ Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (660, N'Duy Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (661, N'Hiếu Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (662, N'Gia Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (663, N'Trung Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (664, N'Đại Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (665, N'Duy Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (666, N'Hữu Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (667, N'Hưng Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (668, N'Hoài Ân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (669, N'Tiến Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (670, N'Thanh Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (671, N'Tuấn Sang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (672, N'Phú Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (673, N'Ngọc Thái')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (674, N'Phúc Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (675, N'Đức Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (676, N'Công Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (677, N'Chí Công')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (678, N'Nguyên Chương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (679, N'Quang Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (680, N'Minh Kỳ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (681, N'Đình Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (682, N'Hạo Thiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (683, N'Duy Khương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (684, N'Văn Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (685, N'Duy Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (686, N'Lê Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (687, N'Quang Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (688, N'Đại Dương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (689, N'Thế Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (690, N'Việt Cường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (691, N'Lê Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (692, N'Tùng Dương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (693, N'Kiến Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (694, N'Đức Tín')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (695, N'Văn Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (696, N'Khải Hoàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (697, N'Nam Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (698, N'Trí Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (699, N'Quân Bảo')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (700, N'Việt Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (701, N'Hoàng Nhật')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (702, N'Hoàng Kha')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (703, N'Văn Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (704, N'Hoàng Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (705, N'Trung Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (706, N'Xuân Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (707, N'Vĩ Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (708, N'Ngọc Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (709, N'Văn Tú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (710, N'Duy Thái')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (711, N'Trung Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (712, N'Trí Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (713, N'Chí Trung')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (714, N'Gia Phước')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (715, N'Tấn Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (716, N'Ngọc Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (717, N'Anh Nhật')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (718, N'Thiên Vũ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (719, N'Anh Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (720, N'Trọng Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (721, N'Nhật Cường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (722, N'Quang Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (723, N'Thanh Phước')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (724, N'Phúc Thiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (725, N'Thanh Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (726, N'Trí Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (727, N'Thế Hiển')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (728, N'Trọng Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (729, N'Khương Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (730, N'Hữu Tín')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (731, N'Quốc Vương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (732, N'Ngọc Thuận')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (733, N'Trí Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (734, N'Thành Lợi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (735, N'Quốc Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (736, N'Đức Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (737, N'Quốc Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (738, N'Bảo Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (739, N'Gia Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (740, N'Văn Thuận')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (741, N'Tấn Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (742, N'Hoài Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (743, N'Nhật Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (744, N'Toàn Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (745, N'Trọng Tấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (746, N'Thái Tú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (747, N'Bảo Ngọc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (748, N'Ngọc Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (749, N'Bảo Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (750, N'Thanh Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (751, N'Thế Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (752, N'Phúc Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (753, N'Hồng Sơn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (754, N'Quang Thuận')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (755, N'Hữu Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (756, N'Quang Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (757, N'Tuấn Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (758, N'Hiếu Thuận')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (759, N'Nguyên Vũ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (760, N'Chấn Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (761, N'Minh Tùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (762, N'Mạnh Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (763, N'Phú Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (764, N'Tấn Lợi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (765, N'Đức Thuận')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (766, N'Thanh Hòa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (767, N'Văn Quang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (768, N'Đức Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (769, N'Bảo Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (770, N'Hoàng Giang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (771, N'Thái Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (772, N'Ngọc Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (773, N'Văn Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (774, N'Bảo Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (775, N'Quốc Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (776, N'Thanh Trường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (777, N'Hải Triều')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (778, N'Thiên Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (779, N'Tấn Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (780, N'Thanh Hiền')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (781, N'Xuân Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (782, N'Văn Hùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (783, N'Phúc Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (784, N'Kiến Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (785, N'Mạnh Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (786, N'Văn Trọng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (787, N'Huy Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (788, N'Nhựt Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (789, N'Thành Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (790, N'Ngọc Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (791, N'Quốc Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (792, N'Kim Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (793, N'Công Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (794, N'Quốc Thuận')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (795, N'Long Nhật')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (796, N'Đức Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (797, N'Quang Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (798, N'Hào Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (799, N'Ngọc Thắng')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (800, N'Trí Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (801, N'Thanh Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (802, N'Quốc Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (803, N'Tấn Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (804, N'Gia Nghĩa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (805, N'Hữu Trọng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (806, N'Hải Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (807, N'Gia Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (808, N'Quang Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (809, N'Thanh Quý')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (810, N'Thiện Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (811, N'Bảo Tín')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (812, N'Bảo Ân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (813, N'Đức Tâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (814, N'Khang Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (815, N'Gia Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (816, N'Anh Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (817, N'Vĩnh Tường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (818, N'Tấn Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (819, N'Đình Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (820, N'Minh Dương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (821, N'Thái Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (822, N'Ngọc Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (823, N'Thanh Trọng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (824, N'Phúc Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (825, N'Đình Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (826, N'Xuân Quang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (827, N'Hoàng Trọng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (828, N'Phú An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (829, N'Tuấn Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (830, N'Duy Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (831, N'Sơn Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (832, N'Chấn Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (833, N'Văn Mạnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (834, N'Gia Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (835, N'Trường Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (836, N'Chí Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (837, N'Minh Hy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (838, N'Xuân Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (839, N'Đình Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (840, N'Đức Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (841, N'Hải Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (842, N'Văn Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (843, N'Văn Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (844, N'Thái Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (845, N'Văn An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (846, N'Phước Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (847, N'Duy Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (848, N'Văn Cường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (849, N'Chí Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (850, N'Thanh Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (851, N'Tuấn Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (852, N'Quang Thiện')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (853, N'Nhân Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (854, N'Đức Quang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (855, N'Nguyên Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (856, N'Thanh Thuận')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (857, N'Đình Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (858, N'Thanh Thiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (859, N'Quang Đại')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (860, N'Phúc Điền')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (861, N'Thành Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (862, N'Gia Khôi')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (863, N'Thành Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (864, N'Quốc Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (865, N'Huy Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (866, N'Trường Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (867, N'Thái Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (868, N'Hoàng Lân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (869, N'Chí Vĩ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (870, N'Hoàng Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (871, N'Hải Sơn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (872, N'Ngọc Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (873, N'Gia Kiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (874, N'Hữu Thọ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (875, N'Anh Hiếu')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (876, N'Phong Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (877, N'Ngọc Tú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (878, N'Thanh Trung')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (879, N'Duy Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (880, N'Bảo Kha')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (881, N'Nhật Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (882, N'Tiến Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (883, N'Duy Tường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (884, N'Hữu Luân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (885, N'Nhật Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (886, N'Nguyên Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (887, N'Đức Khải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (888, N'Gia Hòa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (889, N'Thành Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (890, N'Quốc Thanh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (891, N'Mạnh Tuấn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (892, N'Khải Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (893, N'Văn Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (894, N'Tiến Lộc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (895, N'Anh Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (896, N'Đức An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (897, N'Sơn Tùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (898, N'Đình Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (899, N'Tuấn Nghĩa')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (900, N'Hồng Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (901, N'Hoàng Trung')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (902, N'Hoàng Luân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (903, N'Thiên Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (904, N'Chí Nhân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (905, N'Đình Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (906, N'Phương Đông')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (907, N'Thiên Trường')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (908, N'Anh Kỳ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (909, N'Anh Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (910, N'Tuần Kiệt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (911, N'Tấn Trung')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (912, N'Xuân Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (913, N'Thế Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (914, N'Đại Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (915, N'An Phú')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (916, N'Trọng Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (917, N'Bảo Toàn')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (918, N'Ngọc Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (919, N'Chí Hùng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (920, N'Thanh Dũng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (921, N'Tuấn Ngọc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (922, N'Xuân Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (923, N'Nam Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (924, N'Hoàng Tân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (925, N'Thanh Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (926, N'Phúc Anh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (927, N'Trọng Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (928, N'Văn Tâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (929, N'Đăng Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (930, N'Quang Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (931, N'Duy Khanh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (932, N'Bảo Quân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (933, N'Phú Gia')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (934, N'Đức Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (935, N'Huy Vũ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (936, N'Cường Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (937, N'Thanh Nhã')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (938, N'Phước An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (939, N'Đại Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (940, N'Thành Lâm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (941, N'Thành Tân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (942, N'Việt Thắng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (943, N'Chí Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (944, N'Khang Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (945, N'Minh Khiêm')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (946, N'Thế Huy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (947, N'Hồng Thái')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (948, N'Hồng Phong')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (949, N'An Khánh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (950, N'Huy Long')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (951, N'Minh Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (952, N'Minh Vương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (953, N'Ngọc Thạch')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (954, N'Ngọc Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (955, N'Bảo Hoàng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (956, N'Vĩnh Thịnh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (957, N'Tiến Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (958, N'Nhật An')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (959, N'Bá Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (960, N'Nhựt Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (961, N'Đức Hòa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (962, N'Gia Hân')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (963, N'Thế Hào')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (964, N'Tiến Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (965, N'Hoài Thương')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (966, N'Thiên Quốc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (967, N'Tuấn Kha')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (968, N'Quang Thanh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (969, N'Huy Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (970, N'Tuấn Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (971, N'Thái Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (972, N'Ngọc Vũ')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (973, N'Phúc Bảo')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (974, N'Phước Thành')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (975, N'Anh Thái')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (976, N'Gia Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (977, N'Văn Hòa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (978, N'Duy Đức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (979, N'Thiên Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (980, N'Vũ Khang')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (981, N'Ngọc Hưng')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (982, N'Tấn Vinh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (983, N'Phước Đạt')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (984, N'Nguyên Khoa')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (985, N'Thanh Minh')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (986, N'Nam Hải')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (987, N'Chí Nguyên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (988, N'Thuận Thiên')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (989, N'Minh Thức')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (990, N'Hoàng Phước')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (991, N'Ngọc Trí')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (992, N'Quốc Tài')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (993, N'Trung Tiến')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (994, N'Hòa Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (995, N'Đình Nam')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (996, N'Hoài Phúc')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (997, N'Thế Duy')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (998, N'Quang Phát')
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (999, N'Xuân Tùng')
GO
INSERT [dbo].[SubandNamesMale] ([Số thứ tự], [Tên đệm và tên]) VALUES (1000, N'Trí Toàn')
SET IDENTITY_INSERT [dbo].[SubandNamesMale] OFF
GO
SET IDENTITY_INSERT [dbo].[SubFemaleName] ON 

INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (1, N'Thị', CAST(0.25 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (2, N'Ngọc', CAST(0.10 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (3, N'Như', CAST(0.05 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (4, N'Thanh', CAST(0.06 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (5, N'Diệu', CAST(0.04 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (6, N'Thùy', CAST(0.05 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (7, N'Mỹ', CAST(0.05 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (8, N'Tuyết', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (9, N'Minh', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (10, N'Bích', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (11, N'Thu', CAST(0.04 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (12, N'Mai', CAST(0.04 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (13, N'Phương', CAST(0.04 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (14, N'Anh', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (15, N'Hồng', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (16, N'Lan', CAST(0.02 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (17, N'Trúc', CAST(0.02 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (18, N'Quỳnh', CAST(0.02 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (19, N'Hạ', CAST(0.01 AS Decimal(10, 2)))
INSERT [dbo].[SubFemaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (20, N'Cẩm', CAST(0.01 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[SubFemaleName] OFF
GO
SET IDENTITY_INSERT [dbo].[SubMaleName] ON 

INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (1, N'Văn', CAST(0.18 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (2, N'Hữu', CAST(0.08 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (3, N'Minh', CAST(0.10 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (4, N'Đức', CAST(0.07 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (5, N'Tuấn', CAST(0.06 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (6, N'Quang', CAST(0.06 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (7, N'Gia', CAST(0.05 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (8, N'Nhật', CAST(0.05 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (9, N'Trường', CAST(0.05 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (10, N'Phúc', CAST(0.04 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (11, N'Anh', CAST(0.04 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (12, N'Duy', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (13, N'Thanh', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (14, N'Bảo', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (15, N'Hoàng', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (16, N'Thế', CAST(0.02 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (17, N'Công', CAST(0.01 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (18, N'Tiến', CAST(0.01 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (19, N'Xuân', CAST(0.01 AS Decimal(10, 2)))
INSERT [dbo].[SubMaleName] ([Số thứ tự], [Tên đệm], [Tỉ lệ]) VALUES (20, N'Chí', CAST(0.01 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[SubMaleName] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetNameProbability]    Script Date: 5/5/2025 11:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNameProbability]
    @FullName NVARCHAR(100)
AS
BEGIN
    DECLARE @First NVARCHAR(50), @Sub1 NVARCHAR(50), @Sub2 NVARCHAR(50), @Last NVARCHAR(50)
    DECLARE @ProbFirst FLOAT = 0
    DECLARE @ProbMale FLOAT = 0, @ProbFemale FLOAT = 0
    DECLARE @space1 INT, @space2 INT, @space3 INT
    DECLARE @SubMale FLOAT = 0.000001, @SubFemale FLOAT = 0.000001
    DECLARE @NameMale FLOAT = 0.000001, @NameFemale FLOAT = 0.000001
    DECLARE @SubMale1 FLOAT = 0.000001, @SubMale2 FLOAT = 0.000001
    DECLARE @SubFemale1 FLOAT = 0.000001, @SubFemale2 FLOAT = 0.000001
    DECLARE @SubAndName NVARCHAR(100)
    DECLARE @SubAndNameMale FLOAT = 0.000001, @SubAndNameFemale FLOAT = 0.000001
    DECLARE @Message NVARCHAR(MAX) = ''

    DECLARE @wordCount INT = (LEN(@FullName) - LEN(REPLACE(@FullName, ' ', '')) + 1)

    IF @wordCount = 3
    BEGIN
        SET @space1 = CHARINDEX(' ', @FullName)
        SET @space2 = CHARINDEX(' ', @FullName, @space1 + 1)

        SET @First = LTRIM(RTRIM(SUBSTRING(@FullName, 1, @space1 - 1)))
        SET @Sub1 = LTRIM(RTRIM(SUBSTRING(@FullName, @space1 + 1, @space2 - @space1 - 1)))
        SET @Last = LTRIM(RTRIM(SUBSTRING(@FullName, @space2 + 1, LEN(@FullName))))
        SET @SubAndName = @Sub1 + N' ' + @Last

        SELECT @ProbFirst = [Tỉ lệ] FROM FirstName WHERE [Họ] = @First
        IF @ProbFirst IS NULL SET @ProbFirst = 0

        -- Kiểu cũ
        DECLARE @ProbMaleOld FLOAT = 0, @ProbFemaleOld FLOAT = 0

        IF @Sub1 = N'Thị'
            SET @ProbMaleOld = 0
        ELSE
        BEGIN
            SELECT @SubMale = [Tỉ lệ] * 0.1 FROM SubMaleName WHERE [Tên đệm] = @Sub1
            IF @SubMale IS NULL SET @SubMale = 0.000001
            SELECT @NameMale = [Tỉ lệ] FROM PopularNamesMale WHERE [Tên] = @Last
            IF @NameMale IS NULL SET @NameMale = 0.000001
            SET @ProbMaleOld = @ProbFirst * @SubMale * @NameMale
        END

        IF @Sub1 = N'Văn'
            SET @ProbFemaleOld = 0
        ELSE
        BEGIN
            SELECT @SubFemale = [Tỉ lệ] * 0.1 FROM SubFemaleName WHERE [Tên đệm] = @Sub1
            IF @SubFemale IS NULL SET @SubFemale = 0.000001
            SELECT @NameFemale = [Tỉ lệ] FROM PopularNamesFemale WHERE [Tên] = @Last
            IF @NameFemale IS NULL SET @NameFemale = 0.000001
            SET @ProbFemaleOld = @ProbFirst * @SubFemale * @NameFemale
        END

        -- Kiểu mới
        IF EXISTS (SELECT 1 FROM SubAndNamesMale WHERE [Tên đệm và tên] = @SubAndName)
            SET @SubAndNameMale = 0.0001
        ELSE
            SET @SubAndNameMale = 0.000001

        IF EXISTS (SELECT 1 FROM SubAndNamesFemale WHERE [Tên đệm và tên] = @SubAndName)
            SET @SubAndNameFemale = 0.00001
        ELSE
            SET @SubAndNameFemale = 0.000001

        DECLARE @ProbMaleAlt FLOAT = @ProbFirst * @SubAndNameMale
        DECLARE @ProbFemaleAlt FLOAT = @ProbFirst * @SubAndNameFemale

        SET @ProbMale = IIF(@ProbMaleOld > @ProbMaleAlt, @ProbMaleOld, @ProbMaleAlt)
        SET @ProbFemale = IIF(@ProbFemaleOld > @ProbFemaleAlt, @ProbFemaleOld, @ProbFemaleAlt)
    END
    ELSE IF @wordCount = 4
    BEGIN
        SET @space1 = CHARINDEX(' ', @FullName)
        SET @space2 = CHARINDEX(' ', @FullName, @space1 + 1)
        SET @space3 = CHARINDEX(' ', @FullName, @space2 + 1)

        SET @First = LTRIM(RTRIM(SUBSTRING(@FullName, 1, @space1 - 1)))
        SET @Sub1 = LTRIM(RTRIM(SUBSTRING(@FullName, @space1 + 1, @space2 - @space1 - 1)))
        SET @Sub2 = LTRIM(RTRIM(SUBSTRING(@FullName, @space2 + 1, @space3 - @space2 - 1)))
        SET @Last = LTRIM(RTRIM(SUBSTRING(@FullName, @space3 + 1, LEN(@FullName))))

        SET @SubAndName = @Sub2 + N' ' + @Last

        SELECT @ProbFirst = [Tỉ lệ] FROM FirstName WHERE [Họ] = @First
        IF @ProbFirst IS NULL SET @ProbFirst = 0

        IF @Sub1 = N'Thị' OR @Sub2 = N'Thị'
            SET @ProbMale = 0
        ELSE
        BEGIN
            SELECT @SubMale1 = [Tỉ lệ] * 0.1 FROM SubMaleName WHERE [Tên đệm] = @Sub1
            IF @SubMale1 IS NULL SET @SubMale1 = 0.000001

            IF EXISTS (SELECT 1 FROM SubAndNamesMale WHERE [Tên đệm và tên] = @SubAndName)
                SET @SubAndNameMale = 0.001
            ELSE
                SET @SubAndNameMale = 0.000001

            SET @ProbMale = @ProbFirst * @SubMale1 * @SubAndNameMale
        END

        IF @Sub1 = N'Văn' OR @Sub2 = N'Văn'
            SET @ProbFemale = 0
        ELSE
        BEGIN
            SELECT @SubFemale1 = [Tỉ lệ] * 0.1 FROM SubFemaleName WHERE [Tên đệm] = @Sub1
            IF @SubFemale1 IS NULL SET @SubFemale1 = 0.000001

            IF EXISTS (SELECT 1 FROM SubAndNamesFemale WHERE [Tên đệm và tên] = @SubAndName)
                SET @SubAndNameFemale = 0.001
            ELSE
                SET @SubAndNameFemale = 0.000001

            SET @ProbFemale = @ProbFirst * @SubFemale1 * @SubAndNameFemale
        END
    END
    ELSE
    BEGIN
        SET @Message = N'Không hỗ trợ tính xác suất với số lượng từ này.'
        SELECT @FullName as FullName, 0 as MaleProbability, 0 as FemaleProbability,
               0 as TotalProbability, 0 as EstimatedCount, @Message as Message
        RETURN
    END

    IF @ProbMale < 0.0000000001 SET @ProbMale = 0
    IF @ProbFemale < 0.0000000001 SET @ProbFemale = 0

    DECLARE @TotalPopulation BIGINT = 101381999;
    DECLARE @TotalProb FLOAT = @ProbMale + @ProbFemale;

    IF @TotalProb = 0
    BEGIN
        SET @Message = N'Không có dữ liệu xác suất cho tên này.'
        SELECT @FullName as FullName, 0 as MaleProbability, 0 as FemaleProbability,
               0 as TotalProbability, 0 as EstimatedCount, @Message as Message
        RETURN
    END

    DECLARE @EstimatedCount BIGINT = FLOOR(@TotalProb * @TotalPopulation);
    DECLARE @PredictedGender NVARCHAR(10)

    -- ==== Dự đoán giới tính theo thứ tự ưu tiên chữ "Thị" và "Văn" ====
    IF CHARINDEX(N'Thị', @FullName) > 0 AND CHARINDEX(N'Văn', @FullName) > 0
    BEGIN
        IF CHARINDEX(N'Thị', @FullName) < CHARINDEX(N'Văn', @FullName)
            SET @PredictedGender = N'Nữ'
        ELSE
            SET @PredictedGender = N'Nam'
    END
    ELSE IF CHARINDEX(N'Thị', @FullName) > 0
        SET @PredictedGender = N'Nữ'
    ELSE IF CHARINDEX(N'Văn', @FullName) > 0
        SET @PredictedGender = N'Nam'
    ELSE IF @ProbMale > @ProbFemale
        SET @PredictedGender = N'Nam'
    ELSE IF @ProbMale < @ProbFemale
        SET @PredictedGender = N'Nữ'
    ELSE
        SET @PredictedGender = N'Chưa biết'

    SELECT 
        @FullName as FullName,
        CAST(@ProbMale AS DECIMAL(18,10)) as MaleProbability,
        CAST(@ProbFemale AS DECIMAL(18,10)) as FemaleProbability,
        CAST(@TotalProb AS DECIMAL(18,10)) as TotalProbability,
        @EstimatedCount as EstimatedCount,
        @PredictedGender as PredictedGender,
        N'Phân tích thành công' as Message
END
GO
/****** Object:  StoredProcedure [dbo].[RandomFullNameFemale]    Script Date: 5/5/2025 11:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RandomFullNameFemale]
AS
BEGIN
    SET NOCOUNT ON;

    -- Tạo bảng tạm chứa Họ + Tỉ lệ tích lũy
    CREATE TABLE #TempCumulative (
        [Họ] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    -- Tính tỷ lệ tích lũy và tổng
    INSERT INTO #TempCumulative ([Họ], CumRate, TotalRate)
    SELECT 
        [Họ],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) * 1.0 AS CumRate,
        SUM([Tỉ lệ]) OVER () * 1.0 AS TotalRate
    FROM FirstName;

    -- Sinh random từ 0 đến 1
    DECLARE @r FLOAT = RAND();
    DECLARE @SelectedHo NVARCHAR(50);

    -- Chọn Họ dựa trên xác suất
    SELECT TOP 1 @SelectedHo = [Họ]
    FROM #TempCumulative
    WHERE CumRate / TotalRate >= @r
    ORDER BY CumRate / TotalRate ASC;

    -- Chọn ngẫu nhiên tên đệm và tên
    DECLARE @SubAndName NVARCHAR(100);
    SELECT TOP 1 @SubAndName = [Tên đệm và tên]
    FROM SubandNamesFemale
    ORDER BY NEWID();

    -- Ghép lại và xuất kết quả
    SELECT CONCAT(@SelectedHo, ' ', @SubAndName) AS [Họ và tên đầy đủ];

    -- Dọn dẹp bảng tạm
    DROP TABLE #TempCumulative;
END
GO
/****** Object:  StoredProcedure [dbo].[RandomFullNameFemale_4Parts]    Script Date: 5/5/2025 11:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RandomFullNameFemale_4Parts]
AS
BEGIN
    SET NOCOUNT ON;

    -- ===== RANDOM HỌ =====
    CREATE TABLE #TempHo (
        [Họ] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempHo ([Họ], CumRate, TotalRate)
    SELECT 
        [Họ],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM FirstName;

    DECLARE @rHo FLOAT = RAND();
    DECLARE @Ho NVARCHAR(50);

    SELECT TOP 1 @Ho = [Họ]
    FROM #TempHo
    WHERE CumRate / TotalRate >= @rHo
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempHo;

    -- ===== RANDOM TÊN ĐỆM 1 =====
    CREATE TABLE #TempSub1 (
        [Tên đệm] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempSub1 ([Tên đệm], CumRate, TotalRate)
    SELECT 
        [Tên đệm],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM SubFemaleName;

    DECLARE @rSub1 FLOAT = RAND();
    DECLARE @Sub1 NVARCHAR(50);

    SELECT TOP 1 @Sub1 = [Tên đệm]
    FROM #TempSub1
    WHERE CumRate / TotalRate >= @rSub1
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempSub1;

    -- ===== RANDOM TÊN ĐỆM 2 + TÊN CHÍNH =====
    DECLARE @Sub2AndTen NVARCHAR(100);
    SELECT TOP 1 @Sub2AndTen = [Tên đệm và tên]
    FROM SubandNamesFemale
    ORDER BY NEWID();

    -- ===== KẾT QUẢ =====
    SELECT CONCAT(@Ho, ' ', @Sub1, ' ', @Sub2AndTen) AS [Họ và tên đầy đủ];
END
GO
/****** Object:  StoredProcedure [dbo].[RandomFullNameFemale_By3Tables]    Script Date: 5/5/2025 11:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RandomFullNameFemale_By3Tables]
AS
BEGIN
    SET NOCOUNT ON;

    -- ===== RANDOM HỌ =====
    CREATE TABLE #TempHo (
        [Họ] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempHo ([Họ], CumRate, TotalRate)
    SELECT 
        [Họ],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM FirstName;

    DECLARE @rHo FLOAT = RAND();
    DECLARE @Ho NVARCHAR(50);

    SELECT TOP 1 @Ho = [Họ]
    FROM #TempHo
    WHERE CumRate / TotalRate >= @rHo
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempHo;

    -- ===== RANDOM TÊN ĐỆM =====
    CREATE TABLE #TempSub (
        [Tên đệm] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempSub ([Tên đệm], CumRate, TotalRate)
    SELECT 
        [Tên đệm],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM SubFemaleName;

    DECLARE @rSub FLOAT = RAND();
    DECLARE @Sub NVARCHAR(50);

    SELECT TOP 1 @Sub = [Tên đệm]
    FROM #TempSub
    WHERE CumRate / TotalRate >= @rSub
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempSub;

    -- ===== RANDOM TÊN CHÍNH =====
    CREATE TABLE #TempTen (
        [Tên] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempTen ([Tên], CumRate, TotalRate)
    SELECT 
        [Tên],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM PopularNamesFemale;

    DECLARE @rTen FLOAT = RAND();
    DECLARE @Ten NVARCHAR(50);

    SELECT TOP 1 @Ten = [Tên]
    FROM #TempTen
    WHERE CumRate / TotalRate >= @rTen
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempTen;

    -- ===== XUẤT KẾT QUẢ =====
    SELECT CONCAT(@Ho, ' ', @Sub, ' ', @Ten) AS [Họ và tên đầy đủ];
END
GO
/****** Object:  StoredProcedure [dbo].[RandomFullNameMale]    Script Date: 5/5/2025 11:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RandomFullNameMale]
AS
BEGIN
    SET NOCOUNT ON;

    -- Tạo bảng tạm chứa Họ + Tỉ lệ tích lũy
    CREATE TABLE #TempCumulative (
        [Họ] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    -- Tính tỷ lệ tích lũy và tổng
    INSERT INTO #TempCumulative ([Họ], CumRate, TotalRate)
    SELECT 
        [Họ],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) * 1.0 AS CumRate,
        SUM([Tỉ lệ]) OVER () * 1.0 AS TotalRate
    FROM FirstName;

    -- Sinh random từ 0 đến 1
    DECLARE @r FLOAT = RAND();
    DECLARE @SelectedHo NVARCHAR(50);

    -- Chọn Họ dựa trên xác suất
    SELECT TOP 1 @SelectedHo = [Họ]
    FROM #TempCumulative
    WHERE CumRate / TotalRate >= @r
    ORDER BY CumRate / TotalRate ASC;

    -- Chọn ngẫu nhiên tên đệm và tên (nam)
    DECLARE @SubAndName NVARCHAR(100);
    SELECT TOP 1 @SubAndName = [Tên đệm và tên]
    FROM SubandNamesMale
    ORDER BY NEWID();

    -- Ghép lại và xuất kết quả
    SELECT CONCAT(@SelectedHo, ' ', @SubAndName) AS [Họ và tên đầy đủ];

    -- Dọn dẹp bảng tạm
    DROP TABLE #TempCumulative;
END
GO
/****** Object:  StoredProcedure [dbo].[RandomFullNameMale_4Parts]    Script Date: 5/5/2025 11:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RandomFullNameMale_4Parts]
AS
BEGIN
    SET NOCOUNT ON;

    -- ===== RANDOM HỌ =====
    CREATE TABLE #TempHo (
        [Họ] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempHo ([Họ], CumRate, TotalRate)
    SELECT 
        [Họ],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM FirstName;

    DECLARE @rHo FLOAT = RAND();
    DECLARE @Ho NVARCHAR(50);

    SELECT TOP 1 @Ho = [Họ]
    FROM #TempHo
    WHERE CumRate / TotalRate >= @rHo
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempHo;

    -- ===== RANDOM TÊN ĐỆM 1 =====
    CREATE TABLE #TempSub1 (
        [Tên đệm] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempSub1 ([Tên đệm], CumRate, TotalRate)
    SELECT 
        [Tên đệm],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM SubMaleName;

    DECLARE @rSub1 FLOAT = RAND();
    DECLARE @Sub1 NVARCHAR(50);

    SELECT TOP 1 @Sub1 = [Tên đệm]
    FROM #TempSub1
    WHERE CumRate / TotalRate >= @rSub1
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempSub1;

    -- ===== RANDOM TÊN ĐỆM 2 + TÊN CHÍNH =====
    DECLARE @Sub2AndTen NVARCHAR(100);
    SELECT TOP 1 @Sub2AndTen = [Tên đệm và tên]
    FROM SubandNamesMale
    ORDER BY NEWID();

    -- ===== KẾT QUẢ =====
    SELECT CONCAT(@Ho, ' ', @Sub1, ' ', @Sub2AndTen) AS [Họ và tên đầy đủ];
END
GO
/****** Object:  StoredProcedure [dbo].[RandomFullNameMale_By3Tables]    Script Date: 5/5/2025 11:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RandomFullNameMale_By3Tables]
AS
BEGIN
    SET NOCOUNT ON;

    -- ===== RANDOM HỌ =====
    CREATE TABLE #TempHo (
        [Họ] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempHo ([Họ], CumRate, TotalRate)
    SELECT 
        [Họ],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM FirstName;

    DECLARE @rHo FLOAT = RAND();
    DECLARE @Ho NVARCHAR(50);

    SELECT TOP 1 @Ho = [Họ]
    FROM #TempHo
    WHERE CumRate / TotalRate >= @rHo
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempHo;

    -- ===== RANDOM TÊN ĐỆM =====
    CREATE TABLE #TempSub (
        [Tên đệm] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempSub ([Tên đệm], CumRate, TotalRate)
    SELECT 
        [Tên đệm],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM SubMaleName;

    DECLARE @rSub FLOAT = RAND();
    DECLARE @Sub NVARCHAR(50);

    SELECT TOP 1 @Sub = [Tên đệm]
    FROM #TempSub
    WHERE CumRate / TotalRate >= @rSub
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempSub;

    -- ===== RANDOM TÊN CHÍNH =====
    CREATE TABLE #TempTen (
        [Tên] NVARCHAR(50),
        CumRate FLOAT,
        TotalRate FLOAT
    );

    INSERT INTO #TempTen ([Tên], CumRate, TotalRate)
    SELECT 
        [Tên],
        SUM([Tỉ lệ]) OVER (ORDER BY [Số thứ tự]) AS CumRate,
        SUM([Tỉ lệ]) OVER () AS TotalRate
    FROM PopularNamesMale;

    DECLARE @rTen FLOAT = RAND();
    DECLARE @Ten NVARCHAR(50);

    SELECT TOP 1 @Ten = [Tên]
    FROM #TempTen
    WHERE CumRate / TotalRate >= @rTen
    ORDER BY CumRate / TotalRate ASC;

    DROP TABLE #TempTen;

    -- ===== XUẤT KẾT QUẢ =====
    SELECT CONCAT(@Ho, ' ', @Sub, ' ', @Ten) AS [Họ và tên đầy đủ];
END
GO
USE [master]
GO
ALTER DATABASE [APINAME] SET  READ_WRITE 
GO
