USE [master]
GO
/****** Object:  Database [Chatter]    Script Date: 6/1/2017 1:29:06 PM ******/
CREATE DATABASE [Chatter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Chatter', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Chatter.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Chatter_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Chatter_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Chatter] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Chatter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Chatter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Chatter] SET ARITHABORT OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Chatter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Chatter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Chatter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Chatter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Chatter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Chatter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Chatter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Chatter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Chatter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Chatter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Chatter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Chatter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Chatter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Chatter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Chatter] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Chatter] SET  MULTI_USER 
GO
ALTER DATABASE [Chatter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Chatter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Chatter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Chatter] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Chatter] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Chatter]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/1/2017 1:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/1/2017 1:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/1/2017 1:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/1/2017 1:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/1/2017 1:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/1/2017 1:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chats]    Script Date: 6/1/2017 1:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[ChatID] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](140) NOT NULL,
	[TimeStamp] [datetime] NOT NULL CONSTRAINT [DF_Chats_TimeStamp]  DEFAULT (getdate()),
	[UserID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[ChatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705311839302_InitialCreate', N'Chatter_Spring17.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416592B97EE761BD85BA44ED206DD5CB0CE167D0B688976849528AD44A5098A7E591FFA49FD850E25EAC68B2EB6623B8B02C55A1C1E0E8787E47038CC7FFFFC3BFEE9D1F78C071CC56E4026E6C168DF3430B103C725CB8999D0C5ABB7E64FEFBEFE6A7CE6F88FC6EFB9DC1193839A249E98F79486C79615DBF7D847F1C877ED288883051DD9816F2127B00EF7F77FB40E0E2C0C10266019C6F84342A8EBE3F407FC9C06C4C6214D90771938D88BF9772899A5A8C615F2711C221B4FCCE93DA2144777B330021D0F7E1865554CE3C47311A833C3DEC2341021014514943DFE18E3198D02B29C85F00179B74F2106B905F262CC3B715C8A77EDCFFE21EB8F5556CCA1EC24A681DF13F0E0881BC812ABAF6466B3302098F00C4C4D9F58AF53334ECC0B07A79F3E041E18406CF078EA454C78625E164D9CC4E115A6A3BCE228833C8F00EECF20FA34AA22EE199DEBED15843A1CEDB3FFF68C69E2D124C21382131A216FCFB849E69E6BFF869F6E834F984C8E0EE68BA3B7AFDF20E7E8CDF7F8E875B5A7D05790AB7D804F375110E20874C38BA2FFA661D5EB5962C5A25AA54E6615E012F0CE342ED1E37B4C96F41E66CDE15BD338771FB1937FE1E4FA485C984A50894609FCBC4A3C0FCD3D5C945B8D6DB2FF37B47AF8FACD20AD5EA10777990EBDD03E4C9C08E6D507ECA5A5F1BD1B66D3AB36DE775CEC3C0A7CF6BBCEAFACF46E162491CD3A1368456E51B4C4B4AEDDD82AC9DB89D20C6A785AE7A8BB4F6DA6A94C6FA528EBD02A33216F62D3B321D7F779DBEDCCB8933084C14BA9C52CD24438CD8E351220802199E0AB5CB024D141571211E8DC97BC269EF9C8F50658143BB4024EC9C28D7C5CF4F2E7002888486F9D6F501CC39AE0FC8AE2FB06D5E19F03A83EC3761201556714F9E1B3B776731F107C95F873360336D7D6604373FB67708E6C1A446784D55A1BEF7D607F0A127A469C5344F1476AE780ECE7ADEB770718449D13DBC6717C0E64C6CE34009F3B07BC20F4E8B0371C5BA5B6ED944C3DE4FA6AAF44584FEF72D1D233514B48DE89464CE5A134A9FA3E58BAA49BAAB9A85ED54CA255552ED6575506D64D532EA957341568D533931ACCE74B476878A72F85DD7DAF6FBDCD5BB71654CC38831512FF82098E6019736E522F859423D065DDD886B3900E1F6BF4D9F7A6B4A5DF91970CDDD44AB3215D04869F0D29ECEECF86544DF8FCE03ACC2BE97014CA8501BE93BCFA94D53EE704CD363D1D6ADDDC74E39B590374D3E5248E03DB4D67812208C6431875FDC18733DAE319596FC49808740C88EEB22D0FBE40DF4C9154D7E4147B9862E3C4CE82845314DBC891CD081D727A2896EFA80AC5CAD8485DB9EFA43681E9386295103B04C530535D42E569E112DB0D91D76A25A166C72D8CF5BD68432C39C52126ACC1564B74695C1D0A610A14ED0883D266A1B155615C3311355EAB6ECCDB5CD872DCA508C54638D9E23B6B78C9FDB7672166B3C53640CE66937451401BD6DB0641F959A52B01C483CBAE115438316908CA5DAA8D10B46EB12D10B46E921747D0EC88DA75FC85F3EAAED1B37E50DEFCB6DE68AE2D70B3668F1DA366E67B421D0A357024D3F374CE0AF123551CCE404F7E3E8BB9AB2B528481CF30AD876C4A7F57E9875ACD2022899A004BA2B580F20B4109489A503D94CB63798DDA712FA2076C1E776B84E56BBF005BE1808C5DBD18AD08EAAF4F4572763A7D143D2BD82091BCD361A182A32084B878D53BDEC128BAB8AC6C982EBE701F6FB8D2313E180D066AF15C3546CA3B33B895726AB65B49E590F571C9D6B292E03E69AC947766702B718EB61B49E114F4700BD632517D0B1F68B2E5918E62B729CAC6569634C53F8C2D4D76D5F81285A14B96956C2BFEC598F154AB57B3FEE9477E8661D9B1220BA9D0B6688906115A62A1149A064DCFDD28A6A788A23962719EA9E34B62CABD55B3FCE74D56B74F7910F37D209766FFE6315ECD357E6DC3953D120E740EDDF4995B93C6D21524505737580A1CF250A408DF4F032FF189DECBD2D7CE2EF1AAF5B32F32C2D812F497BC28C96492AF5BB77FA7D19167C69023557832AB8F961E4267F3DC0FAD5A5DE79BEA51F25055154517BEDADAE8E95C9AFE2326BA8CFD07AC15E1796618CF53A902F04F3D312AA90E1258A5AC3B6A3D1BA58A592FE98E28A49C542185A21E5A56134B6A4A560B56C2D358542DD1BD053995A48A2E97764756249554A115C52B602B7416CBBAA32AF24EAAC08AE2EED865128AB892EEF01EA63DC8ACB7896507DEF576310DC6F32C8BC36C82957BFD2A50E5734F2C7E732F81F1EF3B4929EDA96F3D4A65C18EF528A5C1D0AF41B56BF1FA12D47897AFC7ACDD75D796F9A6BB7E3D5E3FE23E2B3DA4939F2852B45E9C008593DE989FBA3A3CB6118F61998869E466842DFE29A6D81F3181D1ECB337F55CCC16F45CE012117781639AE5779887FB0787C2539DDD793663C5B1E3294EADBAB733F531DB40AA167940917D8F223971628DA72525A81493BE200E7E9C987FA5B58ED3F006FB57FA79CFB8883F12F7730205B751828DBFE544D06152ED9BCF5C3BFA30A2BB552FFEB8CBAAEE19D711CC9863635FB0E52A235C7F2ED14B9BACEA1ADAACFC88E2E54EA8DABB0425AA3021567F863077E9204F10722DBFF1D1E3B77D55533E33580B51F1946028BC414CA87B2AB00A96F69980033F69FA4CA05F67D5CF0656514DFB64C025FDC1C40703DD97A1BCE616B71AC5C168134B526AE7D684EBB5B22FB7BD374979D96B4D7439F7BA07DC1AF9D52B30E385A5260FB63B2A328F07C3DE26B59F3DDD7857328CCBDC8FED26166F3297B8E196E88B4A21DE81A4374512CFF6138537CD355D3077C7B32DFBA503EF18D9786AD7F6937E374D365D9877C7C9D62BB577C7B8B6ADFD73CB4CEBBC856E3D5157CE39D25CCAA862C16D89B859E01C4EF8F30048907994D9FB4975E65753D66A4B83A588BE517DCA99D8B03471A4762589E666FBF5956FF88D9DE532CDCD6A12359BDAE6EB7F63DB5CA6B96D4DFAE3365288950988AAB4EE9675AC2927EA25A50CD77AD292A1DEE6B336DEB0BFA40CE1418C529B3D9A3BE29793103C8849869C3A3D1280E5EB5ED83B2B7F8111F6EFD85D9610ECEF31126CD776CD42E6822C827CF31634CA458408CD25A6C8812DF524A2EE02D9148A598C397D009EC6EDD84DC71C3B17E43AA16142A1CBD89F7BB5801773029ADA4FB39CEB3A8FAFC3F46F990CD10550D365B1F96BF273E27A4EA1F7B92226A48160DE058FE8B2B1A42CB2BB7C2A90AE02D211889BAF708A6EB11F7A00165F93197AC0ABE806F47B8F97C87E2A23803A90F681A89B7D7CEAA26584FC986394F5E12770D8F11FDFFD0F1EBCF2E388540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'103216971513251637496', N'03cb5e69-f842-4548-ab29-3280c148bbf0')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'103420797625923952632', N'4cfff5bb-d9ad-4f92-988d-7c5a16f8bfdc')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'03cb5e69-f842-4548-ab29-3280c148bbf0', N'artisticliberties0821@gmail.com', 0, NULL, N'3be94ea3-7d18-4224-befa-7337392aa06c', NULL, 0, 0, NULL, 1, 0, N'artisticliberties0821@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1f6350ba-9b07-420d-9110-42c5133c5493', N'user@example.com', 0, N'AGK3e4ohb06v9iYvGp0hREQL/JuMhcnUWyBliE7c5uSALtTW8LBhVMVkdq1IqoFrjA==', N'f0e35a6b-9722-41b8-904f-7ad8e7add83e', NULL, 0, 0, NULL, 1, 0, N'user@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4cfff5bb-d9ad-4f92-988d-7c5a16f8bfdc', N'lily.krichels@gmail.com', 0, NULL, N'11b90879-fcab-4d2f-9e63-4209d0eea697', NULL, 0, 0, NULL, 1, 0, N'lily.krichels@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'aad14095-85fd-4b6d-9a6f-ccc37682c65e', N'userTwo@test.com', 0, N'AJ2kAkMlXXM/QrqfJU7uu4PEs2XR9/TSTXcDhuS3Y1P5WTb5GMyokYj91R7fiUWipA==', N'b82db052-017d-4b0a-832f-77857a091cc3', NULL, 0, 0, NULL, 1, 0, N'userTwo@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b327f8d4-e566-47cf-bb84-68f45bd6b759', N'example@test.com', 0, N'AP655zxCDBPHFNl686ImlfSXpikkmIjwnGUzpx/0PtROWIg59cI2WvT/Tv9Ow8UB9Q==', N'43c68ebd-8c49-496e-8714-cd1f9a6795d6', NULL, 0, 0, NULL, 1, 0, N'example@test.com')
SET IDENTITY_INSERT [dbo].[Chats] ON 

INSERT [dbo].[Chats] ([ChatID], [Message], [TimeStamp], [UserID]) VALUES (2, N'This is another chat', CAST(N'2017-06-01 10:13:32.150' AS DateTime), N'03cb5e69-f842-4548-ab29-3280c148bbf0')
INSERT [dbo].[Chats] ([ChatID], [Message], [TimeStamp], [UserID]) VALUES (3, N'Hi Im Lilly', CAST(N'2017-06-01 10:15:32.420' AS DateTime), N'4cfff5bb-d9ad-4f92-988d-7c5a16f8bfdc')
INSERT [dbo].[Chats] ([ChatID], [Message], [TimeStamp], [UserID]) VALUES (4, N'The train is running late today!', CAST(N'2017-06-01 10:24:32.510' AS DateTime), N'4cfff5bb-d9ad-4f92-988d-7c5a16f8bfdc')
SET IDENTITY_INSERT [dbo].[Chats] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/1/2017 1:29:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/1/2017 1:29:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/1/2017 1:29:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/1/2017 1:29:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/1/2017 1:29:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/1/2017 1:29:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [Chatter] SET  READ_WRITE 
GO
