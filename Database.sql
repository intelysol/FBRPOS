USE [POSDatabase2005]
GO
/****** Object:  Table [dbo].[FBRSettings]    Script Date: 09/12/2020 16:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FBRSettings](
	[ID] [nvarchar](3) NULL,
	[POSID] [nvarchar](50) NULL,
	[FBRService] [nvarchar](250) NULL,
	[IsActive] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberInformation]    Script Date: 09/12/2020 16:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberInformation](
	[MemberCode] [nvarchar](9) NULL,
	[MemberName] [nvarchar](255) NULL,
	[FatherName] [nvarchar](255) NULL,
	[NIC_Number] [nvarchar](255) NULL,
	[ContactNumber] [nvarchar](255) NULL,
	[MobileNumber] [nvarchar](255) NULL,
	[FaxNumber] [nvarchar](255) NULL,
	[EmailAddress] [nvarchar](255) NULL,
	[BillingAddress] [nvarchar](255) NULL,
	[ParentCode] [nvarchar](5) NULL,
	[MemberType] [nvarchar](4) NULL,
	[RegistrationDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[CreditLimit] [money] NULL,
	[DepositAmount] [money] NULL,
	[Picture] [varbinary](max) NULL,
	[CardNumber] [nvarchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MenuRights]    Script Date: 09/12/2020 16:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuRights](
	[UserID] [nvarchar](15) NULL,
	[MenuID] [nvarchar](4) NULL,
	[MenuTypeID] [nvarchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 09/12/2020 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserID] [nvarchar](15) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](80) NULL,
	[AllowEdit] [char](1) NULL,
	[AllowDelete] [char](1) NULL,
	[AllowPrint] [char](1) NULL,
	[DisableUser] [char](1) NULL,
	[ChangePassword] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserMenu]    Script Date: 09/12/2020 16:50:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMenu](
	[MenuID] [nvarchar](4) NULL,
	[MenuName] [nvarchar](80) NULL,
	[MenuCaption] [nvarchar](80) NULL,
	[MenuType] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatagorySetup]    Script Date: 09/12/2020 16:49:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatagorySetup](
	[ID] [nvarchar](4) NOT NULL,
	[CatagoryName] [nvarchar](50) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_CatagorySetup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeInformation]    Script Date: 09/12/2020 16:50:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeInformation](
	[ID] [nvarchar](4) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[FatherName] [nvarchar](50) NULL,
	[NICNumber] [nvarchar](15) NULL,
	[EmployeeType] [nvarchar](35) NULL,
	[ContactNumber] [nvarchar](15) NULL,
	[Address] [nvarchar](80) NULL,
	[EmployeePicture] [varbinary](max) NULL,
	[Department_ID] [nvarchar](4) NULL,
	[Designation_ID] [nvarchar](4) NULL,
 CONSTRAINT [PK_EmployeeInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 09/12/2020 16:49:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[ID] [nvarchar](4) NOT NULL,
	[BrandName] [nvarchar](50) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyInformation]    Script Date: 09/12/2020 16:49:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyInformation](
	[ID] [nvarchar](4) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[CompanyAddress] [nvarchar](50) NULL,
	[DockitFooter] [nvarchar](200) NULL,
	[LicenseNumber] [nvarchar](70) NULL,
	[TransactionDate] [datetime] NULL,
	[DeliveryNumbers] [nvarchar](100) NULL,
	[StoreID] [nvarchar](50) NULL,
	[NTNNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_CompanyInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealSetup]    Script Date: 09/12/2020 16:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealSetup](
	[ID] [nvarchar](4) NOT NULL,
	[DealDescription] [nvarchar](30) NULL,
	[DealRule] [nvarchar](30) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_DealSetup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountSetup]    Script Date: 09/12/2020 16:50:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiscountSetup](
	[ID] [nvarchar](4) NOT NULL,
	[DiscountDescription] [nvarchar](30) NULL,
	[DiscountAmount] [money] NULL,
	[IsPercentage] [char](1) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_DiscountSetup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 09/12/2020 16:49:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[ID] [nvarchar](4) NOT NULL,
	[CouponDesc] [nvarchar](200) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemSetup]    Script Date: 09/12/2020 16:50:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemSetup](
	[ItemCode] [nvarchar](4) NOT NULL,
	[ItemName] [nvarchar](255) NULL,
	[Price] [money] NULL,
	[Catagory_ID] [nvarchar](4) NULL,
	[Brand_ID] [nvarchar](4) NULL,
	[MinQuantity] [numeric](18, 0) NULL,
	[MaxQuantity] [numeric](18, 0) NULL,
	[ItemDesc] [nvarchar](255) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_ItemSetup] PRIMARY KEY CLUSTERED 
(
	[ItemCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaxesSetup]    Script Date: 09/12/2020 16:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxesSetup](
	[ID] [nvarchar](4) NULL,
	[TaxesDescription] [nvarchar](50) NULL,
	[TaxesAmount] [numeric](18, 2) NULL,
	[IsPercentage] [int] NULL,
	[IsActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 09/12/2020 16:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transactions](
	[ID] [nvarchar](15) NULL,
	[FBRInvoiceNumber] [nvarchar](50) NULL,
	[TransactionDate] [datetime] NULL,
	[TransactionType] [nvarchar](15) NULL,
	[Catagory_ID] [nvarchar](4) NULL,
	[Customers] [nvarchar](50) NULL,
	[SalesTaxNo] [nvarchar](25) NULL,
	[ContactNo] [nvarchar](25) NULL,
	[RegistrationAddress] [nvarchar](150) NULL,
	[UserID] [nvarchar](15) NULL,
	[Item_ID] [nvarchar](4) NULL,
	[ItemName] [nvarchar](50) NULL,
	[ItemPrice] [money] NULL,
	[ItemPriceExTaxes] [money] NULL,
	[ItemQuantity] [money] NULL,
	[ItemTotalAmount] [money] NULL,
	[InvTotalAmount] [money] NULL,
	[Discount_ID] [nvarchar](4) NULL,
	[DiscountAmount] [money] NULL,
	[TaxRate] [money] NULL,
	[TaxAmount] [money] NULL,
	[PaymentType] [nvarchar](15) NULL,
	[TransactionClose] [char](1) NULL,
	[TransactionsVoid] [char](1) NULL,
	[VoidDescription] [nvarchar](50) NULL,
	[TransactionStartTime] [datetime] NULL,
	[TransactionEndTime] [datetime] NULL,
	[DiscountName] [nvarchar](50) NULL,
	[Employee_ID] [nvarchar](4) NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[NewRecord] [nvarchar](3) NOT NULL CONSTRAINT [DF_Transactions_NewRecord]  DEFAULT (N'Y')
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DailySummary]    Script Date: 09/12/2020 16:49:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailySummary](
	[TransactionDate] [datetime] NULL,
	[NetAmount] [money] NULL,
	[DiscountAmount] [money] NULL,
	[TaxesAmount] [money] NULL
) ON [PRIMARY]
GO
