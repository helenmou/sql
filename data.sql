USE [master]
GO
/****** Object:  Database [dbtest]    Script Date: 01/08/2015 15:45:34 ******/
CREATE DATABASE [dbtest] ON  PRIMARY 
( NAME = N'dbtest', FILENAME = N'C:\Users\qing\Desktop\dbtest.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10240KB )
 LOG ON 
( NAME = N'dbtest_log', FILENAME = N'C:\Users\qing\Desktop\dbtest_log.ldf' , SIZE = 5120KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbtest] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbtest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbtest] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [dbtest] SET ANSI_NULLS OFF
GO
ALTER DATABASE [dbtest] SET ANSI_PADDING OFF
GO
ALTER DATABASE [dbtest] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [dbtest] SET ARITHABORT OFF
GO
ALTER DATABASE [dbtest] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [dbtest] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [dbtest] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [dbtest] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [dbtest] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [dbtest] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [dbtest] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [dbtest] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [dbtest] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [dbtest] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [dbtest] SET  ENABLE_BROKER
GO
ALTER DATABASE [dbtest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [dbtest] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [dbtest] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [dbtest] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [dbtest] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [dbtest] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [dbtest] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [dbtest] SET  READ_WRITE
GO
ALTER DATABASE [dbtest] SET RECOVERY FULL
GO
ALTER DATABASE [dbtest] SET  MULTI_USER
GO
ALTER DATABASE [dbtest] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [dbtest] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbtest', N'ON'
GO
USE [dbtest]
GO
/****** Object:  Table [dbo].[ScoreInfo]    Script Date: 01/08/2015 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScoreInfo](
	[sId] [int] IDENTITY(1,1) NOT NULL,
	[subId] [int] NULL,
	[stuId] [int] NULL,
	[scoreValue] [decimal](5, 2) NULL,
 CONSTRAINT [PK_ScoreInfo] PRIMARY KEY CLUSTERED 
(
	[sId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ScoreInfo] ON
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (1, 1, 1, CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (2, 1, 2, CAST(87.00 AS Decimal(5, 2)))
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (3, 1, 3, CAST(98.00 AS Decimal(5, 2)))
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (4, 1, 4, CAST(61.00 AS Decimal(5, 2)))
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (5, 1, 5, CAST(59.00 AS Decimal(5, 2)))
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (6, 2, 1, CAST(89.00 AS Decimal(5, 2)))
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (7, 2, 3, CAST(98.50 AS Decimal(5, 2)))
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (8, 2, 4, CAST(78.50 AS Decimal(5, 2)))
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (9, 3, 1, CAST(92.50 AS Decimal(5, 2)))
INSERT [dbo].[ScoreInfo] ([sId], [subId], [stuId], [scoreValue]) VALUES (10, 3, 2, CAST(68.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[ScoreInfo] OFF
/****** Object:  Table [dbo].[ClassInfo]    Script Date: 01/08/2015 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassInfo](
	[cId] [int] IDENTITY(1,1) NOT NULL,
	[cTitle] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[cId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClassInfo] ON
INSERT [dbo].[ClassInfo] ([cId], [cTitle]) VALUES (1, N'青龙')
INSERT [dbo].[ClassInfo] ([cId], [cTitle]) VALUES (2, N'白虎')
INSERT [dbo].[ClassInfo] ([cId], [cTitle]) VALUES (3, N'朱雀')
INSERT [dbo].[ClassInfo] ([cId], [cTitle]) VALUES (4, N'玄武')
SET IDENTITY_INSERT [dbo].[ClassInfo] OFF
/****** Object:  Table [dbo].[UserInfo]    Script Date: 01/08/2015 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](10) NULL,
	[UserPwd] [char](32) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON
INSERT [dbo].[UserInfo] ([UserId], [UserName], [UserPwd]) VALUES (1, N'小龙包', N'21232f297a57a5a743894a0e4a801fc3')
INSERT [dbo].[UserInfo] ([UserId], [UserName], [UserPwd]) VALUES (2, N'大头贴', N'21232f297a57a5a743894a0e4a801fc3')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Table [dbo].[SubjectInfo]    Script Date: 01/08/2015 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectInfo](
	[sId] [int] IDENTITY(1,1) NOT NULL,
	[sTitle] [nvarchar](10) NULL,
 CONSTRAINT [PK_SubjectInfo] PRIMARY KEY CLUSTERED 
(
	[sId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SubjectInfo] ON
INSERT [dbo].[SubjectInfo] ([sId], [sTitle]) VALUES (1, N'语文')
INSERT [dbo].[SubjectInfo] ([sId], [sTitle]) VALUES (2, N'数学')
INSERT [dbo].[SubjectInfo] ([sId], [sTitle]) VALUES (3, N'英语')
SET IDENTITY_INSERT [dbo].[SubjectInfo] OFF
/****** Object:  Table [dbo].[StudentInfo]    Script Date: 01/08/2015 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentInfo](
	[sId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](10) NOT NULL,
	[sGender] [bit] NULL,
	[sBirthday] [date] NULL,
	[sPhone] [char](11) NULL,
	[sEMail] [varchar](20) NULL,
	[cid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[StudentInfo] ON
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (1, N'小笼包', 0, CAST(0xD4160B00 AS Date), N'1381234567 ', N'xlb@qq.com', 1)
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (2, N'杨过', 1, CAST(0xD7080B00 AS Date), N'1581234567 ', N'yg@163.com', 2)
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (3, N'周伯通', 1, CAST(0xD9190B00 AS Date), N'1881234567 ', N'zbt@126.com', 3)
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (4, N'尹志平', 1, CAST(0x4A1A0B00 AS Date), N'1371234567 ', N'yzp@gmail.com', 1)
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (5, N'令独冲', 1, CAST(0x730F0B00 AS Date), NULL, N'lhc@sohu.com', 2)
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (6, N'郭靖', 1, CAST(0x49150B00 AS Date), NULL, N'gj@qq.com', 3)
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (7, N'黄蓉', 0, CAST(0xD40D0B00 AS Date), N'1871234567 ', N'hr@qq.com', 1)
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (8, N'张三丰', 1, CAST(0xFA1F0B00 AS Date), N'1311234567 ', N'zsf@163.com', 1)
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (9, N'独孤求败', 1, CAST(0xA8230B00 AS Date), N'1891234567 ', N'dgqb@gmail.com', 3)
INSERT [dbo].[StudentInfo] ([sId], [sName], [sGender], [sBirthday], [sPhone], [sEMail], [cid]) VALUES (10, N'王重阳', 1, CAST(0x1C160B00 AS Date), N'1301234567 ', N'wcy@163.com', 3)
SET IDENTITY_INSERT [dbo].[StudentInfo] OFF
/****** Object:  Default [DF__StudentIn__sGend__07020F21]    Script Date: 01/08/2015 15:45:36 ******/
ALTER TABLE [dbo].[StudentInfo] ADD  DEFAULT ((0)) FOR [sGender]
GO
/****** Object:  ForeignKey [FK__StudentInfo__cid__07F6335A]    Script Date: 01/08/2015 15:45:36 ******/
ALTER TABLE [dbo].[StudentInfo]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[ClassInfo] ([cId])
GO
