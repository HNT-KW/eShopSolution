USE [master]
GO
/****** Object:  Database [eShopSolution]    Script Date: 12/16/2020 9:15:50 AM ******/
CREATE DATABASE [eShopSolution]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eShopSolution', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\eShopSolution.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eShopSolution_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\eShopSolution_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [eShopSolution] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eShopSolution].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eShopSolution] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eShopSolution] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eShopSolution] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eShopSolution] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eShopSolution] SET ARITHABORT OFF 
GO
ALTER DATABASE [eShopSolution] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eShopSolution] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eShopSolution] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eShopSolution] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eShopSolution] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eShopSolution] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eShopSolution] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eShopSolution] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eShopSolution] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eShopSolution] SET  ENABLE_BROKER 
GO
ALTER DATABASE [eShopSolution] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eShopSolution] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eShopSolution] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eShopSolution] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eShopSolution] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eShopSolution] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [eShopSolution] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eShopSolution] SET RECOVERY FULL 
GO
ALTER DATABASE [eShopSolution] SET  MULTI_USER 
GO
ALTER DATABASE [eShopSolution] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eShopSolution] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eShopSolution] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eShopSolution] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eShopSolution] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [eShopSolution] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'eShopSolution', N'ON'
GO
ALTER DATABASE [eShopSolution] SET QUERY_STORE = OFF
GO
USE [eShopSolution]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppConfigs]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppConfigs](
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AppConfigs] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[Dob] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsShowOnHome] [bit] NOT NULL,
	[ParentId] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryTranslations]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryTranslations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[SeoDescription] [nvarchar](500) NULL,
	[SeoTitle] [nvarchar](200) NULL,
	[LanguageId] [varchar](5) NOT NULL,
	[SeoAlias] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_CategoryTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[PhoneNumber] [nvarchar](200) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [varchar](5) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ShipName] [nvarchar](200) NOT NULL,
	[ShipAddress] [nvarchar](200) NOT NULL,
	[ShipEmail] [varchar](50) NOT NULL,
	[ShipPhoneNumber] [nvarchar](200) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImagePath] [nvarchar](200) NOT NULL,
	[Caption] [nvarchar](200) NULL,
	[IsDefault] [bit] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[FileSize] [bigint] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInCategories]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInCategories](
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_ProductInCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[IsFeatured] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTranslations]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTranslations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Details] [nvarchar](500) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoAlias] [nvarchar](200) NOT NULL,
	[LanguageId] [varchar](5) NOT NULL,
 CONSTRAINT [PK_ProductTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromDate] [datetime2](7) NOT NULL,
	[ToDate] [datetime2](7) NOT NULL,
	[ApplyForAll] [bit] NOT NULL,
	[DiscountPercent] [int] NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[ProductIds] [nvarchar](max) NULL,
	[ProductCategoryIds] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Url] [nvarchar](200) NOT NULL,
	[Image] [nvarchar](200) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 12/16/2020 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDate] [datetime2](7) NOT NULL,
	[ExternalTransactionId] [nvarchar](max) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Fee] [decimal](18, 2) NOT NULL,
	[Result] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Provider] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_ProductId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_ProductId] ON [dbo].[Carts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_UserId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_UserId] ON [dbo].[Carts]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryTranslations_CategoryId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_CategoryTranslations_CategoryId] ON [dbo].[CategoryTranslations]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CategoryTranslations_LanguageId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_CategoryTranslations_LanguageId] ON [dbo].[CategoryTranslations]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductInCategories_ProductId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductInCategories_ProductId] ON [dbo].[ProductInCategories]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductTranslations_LanguageId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductTranslations_LanguageId] ON [dbo].[ProductTranslations]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductTranslations_ProductId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductTranslations_ProductId] ON [dbo].[ProductTranslations]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Transactions_UserId]    Script Date: 12/16/2020 9:15:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Transactions_UserId] ON [dbo].[Transactions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Products_ProductId]
GO
ALTER TABLE [dbo].[CategoryTranslations]  WITH CHECK ADD  CONSTRAINT [FK_CategoryTranslations_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryTranslations] CHECK CONSTRAINT [FK_CategoryTranslations_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CategoryTranslations]  WITH CHECK ADD  CONSTRAINT [FK_CategoryTranslations_Languages_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryTranslations] CHECK CONSTRAINT [FK_CategoryTranslations_Languages_LanguageId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AppUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductInCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductInCategories_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductInCategories] CHECK CONSTRAINT [FK_ProductInCategories_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ProductInCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductInCategories_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductInCategories] CHECK CONSTRAINT [FK_ProductInCategories_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductTranslations]  WITH CHECK ADD  CONSTRAINT [FK_ProductTranslations_Languages_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTranslations] CHECK CONSTRAINT [FK_ProductTranslations_Languages_LanguageId]
GO
ALTER TABLE [dbo].[ProductTranslations]  WITH CHECK ADD  CONSTRAINT [FK_ProductTranslations_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTranslations] CHECK CONSTRAINT [FK_ProductTranslations_Products_ProductId]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_AppUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [eShopSolution] SET  READ_WRITE 
GO
