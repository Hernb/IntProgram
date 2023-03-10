USE [kayitdb]
GO
/****** Object:  Table [dbo].[derstablo]    Script Date: 7.12.2022 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[derstablo](
	[dersid] [smallint] IDENTITY(1,1) NOT NULL,
	[dersadi] [varchar](30) NULL,
	[derskredisi] [varchar](30) NULL,
	[dersokulyonetimid] [smallint] NULL,
 CONSTRAINT [PK_tbl_ders] PRIMARY KEY CLUSTERED 
(
	[dersid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrenciderstablo]    Script Date: 7.12.2022 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenciderstablo](
	[ogrencidersid] [smallint] IDENTITY(1,1) NOT NULL,
	[ogrencidersdersid] [smallint] NULL,
	[ogrencidersogrenciid] [smallint] NULL,
 CONSTRAINT [PK_tbl_ogrenciders] PRIMARY KEY CLUSTERED 
(
	[ogrencidersid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrencilertablo]    Script Date: 7.12.2022 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrencilertablo](
	[ogrenciid] [smallint] IDENTITY(1,1) NOT NULL,
	[ogrenciadsoyad] [varchar](50) NULL,
	[ogrencikayittarih] [datetime] NULL,
	[ogrencidogumtarih] [datetime] NULL,
	[ogrencibolum] [varchar](50) NULL,
	[ogrencino] [varchar](11) NULL,
 CONSTRAINT [PK_tbl_ogrenciler] PRIMARY KEY CLUSTERED 
(
	[ogrenciid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[okulyonetimtablo]    Script Date: 7.12.2022 16:50:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[okulyonetimtablo](
	[yonetimid] [smallint] IDENTITY(1,1) NOT NULL,
	[yonetimadsoyad] [varchar](30) NULL,
	[yonetimgorevi] [varchar](30) NULL,
	[yonetimtipi] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_okulyonetim] PRIMARY KEY CLUSTERED 
(
	[yonetimid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[derstablo] ON 

INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (1, N'Bilgisayar programcılığı', N'10', 3)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (2, N'spor yönetimi', N'5', 6)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (3, N'dış ticaret', N'3', 3)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (4, N'muhasebe', N'1', 1)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (5, N'Aşçılık', N'4', 2)
SET IDENTITY_INSERT [dbo].[derstablo] OFF
GO
SET IDENTITY_INSERT [dbo].[ogrenciderstablo] ON 

INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (1, 1, 12)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (2, 2, 13)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (3, 3, 14)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (4, 1, 15)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (5, 2, 12)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (6, 1, 13)
SET IDENTITY_INSERT [dbo].[ogrenciderstablo] OFF
GO
SET IDENTITY_INSERT [dbo].[ogrencilertablo] ON 

INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (12, N'batuhan bingöl', CAST(N'2022-12-06T23:50:27.603' AS DateTime), CAST(N'2002-06-07T23:49:28.000' AS DateTime), N'bilgisayar programcılığı', N'507')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (13, N'hande baladın', CAST(N'2022-12-07T13:35:05.427' AS DateTime), CAST(N'1997-09-01T13:33:26.000' AS DateTime), N'spor yönetimi', N'7')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (14, N'Elif Sinem Soydan', CAST(N'2022-12-07T13:36:29.223' AS DateTime), CAST(N'2003-07-21T13:33:26.000' AS DateTime), N'veterinerlik', N'21')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (15, N'Anıl Arslan', CAST(N'2022-12-07T13:42:49.480' AS DateTime), CAST(N'2002-01-01T13:33:26.000' AS DateTime), N'bilgisayar programcılığı', N'31')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (16, N'mustafa beyazyüz', CAST(N'2022-12-07T13:48:45.890' AS DateTime), CAST(N'1998-06-08T13:33:26.000' AS DateTime), N'bilgisayar programcılığı', N'45')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (17, N'büşra akar', CAST(N'2022-12-07T13:49:25.230' AS DateTime), CAST(N'1996-08-15T13:33:26.000' AS DateTime), N'dış ticaret', N'51')
SET IDENTITY_INSERT [dbo].[ogrencilertablo] OFF
GO
SET IDENTITY_INSERT [dbo].[okulyonetimtablo] ON 

INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (1, N'Refik Tanju', N'Matematik', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (2, N'Mehmet Yıldız', N'Yazılım', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (3, N'Süleyman Can', N'İşletme', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (4, N'Eren Taşçı', N'Müdür Yardımcısı', N'11        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (5, N'Mustafa Taş', N'Müdür', N'11        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (6, N'Zeynep Korkmaz', N'Sosyal Bilgiler', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (9, N'Eylül Kınacı', N'Muhasebe', N'11        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (10, N'Şule Bilgin', N'Sosyal Bilgiler', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (11, N'Ekrem Priestson', N'Siyasal Bilimler', N'11        ')
SET IDENTITY_INSERT [dbo].[okulyonetimtablo] OFF
GO
ALTER TABLE [dbo].[derstablo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ders_tbl_okulyonetim] FOREIGN KEY([dersokulyonetimid])
REFERENCES [dbo].[okulyonetimtablo] ([yonetimid])
GO
ALTER TABLE [dbo].[derstablo] CHECK CONSTRAINT [FK_tbl_ders_tbl_okulyonetim]
GO
ALTER TABLE [dbo].[ogrenciderstablo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ogrenciders_tbl_ders] FOREIGN KEY([ogrencidersdersid])
REFERENCES [dbo].[derstablo] ([dersid])
GO
ALTER TABLE [dbo].[ogrenciderstablo] CHECK CONSTRAINT [FK_tbl_ogrenciders_tbl_ders]
GO
ALTER TABLE [dbo].[ogrenciderstablo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ogrenciders_tbl_ogrenciler1] FOREIGN KEY([ogrencidersogrenciid])
REFERENCES [dbo].[ogrencilertablo] ([ogrenciid])
GO
ALTER TABLE [dbo].[ogrenciderstablo] CHECK CONSTRAINT [FK_tbl_ogrenciders_tbl_ogrenciler1]
GO
