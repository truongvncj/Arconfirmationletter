USE [master]
GO
/****** Object:  Database [ARconfirmationletter]    Script Date: 5/27/2021 2:04:49 AM ******/
CREATE DATABASE [ARconfirmationletter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ARconfirmationletter', FILENAME = N'C:\Data\Datasql\ARconfirmationletter.mdf' , SIZE = 338880KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ARconfirmationletter_log', FILENAME = N'C:\Data\Datasql\ARconfirmationletter_log.ldf' , SIZE = 526336KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ARconfirmationletter] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ARconfirmationletter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ARconfirmationletter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET ARITHABORT OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ARconfirmationletter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ARconfirmationletter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ARconfirmationletter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ARconfirmationletter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ARconfirmationletter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ARconfirmationletter] SET  MULTI_USER 
GO
ALTER DATABASE [ARconfirmationletter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ARconfirmationletter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ARconfirmationletter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ARconfirmationletter] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ARconfirmationletter] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ARconfirmationletter]
GO
/****** Object:  User [sqltruong]    Script Date: 5/27/2021 2:04:49 AM ******/
CREATE USER [sqltruong] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DESKTOP-UVMCLH1\Administrator]    Script Date: 5/27/2021 2:04:49 AM ******/
CREATE USER [DESKTOP-UVMCLH1\Administrator] FOR LOGIN [DESKTOP-UVMCLH1\Administrator] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tbl_ARdetalheaderRpt]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ARdetalheaderRpt](
	[custcodeGRoup] [float] NULL,
	[customername] [nvarchar](225) NULL,
	[address] [nvarchar](225) NULL,
	[phone] [nvarchar](50) NULL,
	[code] [float] NULL,
	[region] [nchar](10) NULL,
	[dknuoc] [float] NULL,
	[psnuoc] [float] NULL,
	[cknuoc] [float] NULL,
	[dkvo] [float] NULL,
	[psvo] [float] NULL,
	[ckvo] [float] NULL,
	[Fromdate] [date] NULL,
	[Todate] [date] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[No] [int] NULL,
	[prt] [bit] NULL,
	[Hideprint] [bit] NULL,
 CONSTRAINT [PK_Rpt_ARdetalheader] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ArletterdetailRpt]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ArletterdetailRpt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PostingDate] [date] NULL,
	[DocNumber] [nvarchar](50) NULL,
	[InvoiceAmount] [float] NULL,
	[Paymentamount] [float] NULL,
	[Adjamount] [float] NULL,
	[Depositamount] [float] NULL,
	[customergroup] [float] NULL,
	[amountinloca] [float] NULL,
	[prt] [bit] NULL,
	[Hideprint] [bit] NULL,
 CONSTRAINT [PK_Arletterdetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ArletterRpt]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ArletterRpt](
	[custcodegRoup] [float] NULL,
	[customername] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[code] [float] NULL,
	[region] [nvarchar](255) NULL,
	[sumAmountfull] [float] NULL,
	[sumEmptydeposit] [float] NULL,
	[StringAmountEmpty] [nvarchar](255) NULL,
	[sumoffreeclass] [float] NULL,
	[toDate] [date] NULL,
	[fromdate] [date] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[No] [int] NULL,
	[returndate] [date] NULL,
	[prt] [bit] NULL,
	[Hideprint] [bit] NULL,
 CONSTRAINT [PK_tbl_ArletterRpt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_checktemp]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_checktemp](
	[docnumber] [float] NULL,
	[code] [nchar](10) NULL,
	[name] [nvarchar](225) NULL,
	[region] [nchar](10) NULL,
	[CountValueinFBLandVAT] [float] NULL,
	[contvalueinEDLP] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_checktemp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ColdetailRpt]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ColdetailRpt](
	[Account] [float] NULL,
	[Assignment] [nvarchar](255) NULL,
	[Postingdate] [date] NOT NULL,
	[Document Type] [nvarchar](255) NULL,
	[InvoiceNumber] [nvarchar](255) NULL,
	[Document Date] [date] NULL,
	[Business Area] [nvarchar](255) NULL,
	[Invoice Registration] [nvarchar](255) NULL,
	[Invoice Number] [nvarchar](255) NULL,
	[Invoice amount before VAT] [float] NULL,
	[Deposit amount] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codeGroup] [float] NULL,
	[SoDelivery] [nvarchar](255) NULL,
	[dkKetvothuong] [int] NULL,
	[Ketvothuong] [int] NULL,
	[dkChaivothuong] [int] NULL,
	[Chaivothuong] [int] NULL,
	[dkKetvolit] [int] NULL,
	[Ketvolit] [int] NULL,
	[dkChaivo1lit] [int] NULL,
	[Chaivo1lit] [int] NULL,
	[dkKetnhuathuong] [int] NULL,
	[Ketnhuathuong] [int] NULL,
	[dkKetnhua1lit] [int] NULL,
	[Ketnhua1lit] [int] NULL,
	[dkjoy20] [int] NULL,
	[joy20l] [int] NULL,
	[dkBinhpmicc02] [int] NULL,
	[Binhpmicc02] [int] NULL,
	[dkbinhpmix9l] [int] NULL,
	[binhpmix9l] [int] NULL,
	[dkpalletgo] [int] NULL,
	[palletgo] [int] NULL,
	[dkpaletnhua] [int] NULL,
	[paletnhua] [int] NULL,
	[prt] [bit] NULL,
	[Hideprint] [bit] NULL,
 CONSTRAINT [PK_Coldetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Comboundtemp]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Comboundtemp](
	[Code] [float] NULL,
	[codeGroup] [float] NULL,
	[name] [nvarchar](225) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_Comboundtemp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_CustomerGroup]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CustomerGroup](
	[Customercode] [float] NULL,
	[Region] [nvarchar](50) NULL,
	[Customergropcode] [float] NULL,
	[Group Name] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AdressGroup] [nchar](225) NULL,
	[Phone] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_CustomerGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_CustomerGroupTemp]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CustomerGroupTemp](
	[Customercode] [float] NULL,
	[Customergropcode] [float] NULL,
	[Group Name] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](50) NULL,
	[AdressGroup] [nchar](225) NULL,
	[Phone] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_CustomerGroupTemp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_detailTEMP]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_detailTEMP](
	[id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_EmptyGroup]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EmptyGroup](
	[id] [int] NOT NULL,
	[Name Group Emptty] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_EmptyGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_FreGlass]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FreGlass](
	[CUSTOMER] [float] NULL,
	[SALORG] [nvarchar](255) NULL,
	[COLAMT] [float] NULL,
	[PERNO] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CUSTOMERgroupcode] [float] NULL,
 CONSTRAINT [PK_tbl_FreGlass] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_LetterForlow]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LetterForlow](
	[Fromdate] [date] NULL,
	[Todate] [date] NULL,
	[No] [float] NULL,
	[Code] [float] NULL,
	[Region] [nchar](10) NULL,
	[id] [int] NOT NULL,
	[Return] [bit] NULL,
	[Note] [nchar](225) NULL,
	[AgreeorNot] [bit] NULL,
 CONSTRAINT [PK_tbl_LetterForlow] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Preriod]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Preriod](
	[customercodeGR] [float] NULL,
	[Region] [nchar](5) NULL,
	[Name] [nchar](225) NULL,
	[Realbalace] [float] NULL,
	[Deposit amount] [float] NULL,
	[EmptyString] [nchar](225) NULL,
	[LetterReturn] [date] NULL,
	[AgreeOrDisAgree] [bit] NULL,
	[CustomerFeedback] [nchar](225) NULL,
	[NoteByAR] [nchar](225) NULL,
	[fromdate] [date] NULL,
	[todate] [date] NULL,
	[No] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_Preriod2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Productlist]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Productlist](
	[Mat Number] [nvarchar](255) NOT NULL,
	[Mat Text] [nvarchar](255) NULL,
	[Mat Group] [float] NULL,
	[Mat Group Text] [nvarchar](255) NULL,
	[Empty Group] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_Productlist] PRIMARY KEY CLUSTERED 
(
	[Mat Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ProductlistTMP]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProductlistTMP](
	[Mat Number] [nvarchar](255) NOT NULL,
	[Mat Text] [nvarchar](255) NULL,
	[Mat Group] [float] NULL,
	[Mat Group Text] [nvarchar](255) NULL,
	[Empty Group] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_ProductlistTMP] PRIMARY KEY CLUSTERED 
(
	[Mat Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Remark]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Remark](
	[DocumentNo] [float] NULL,
	[Customer] [float] NULL,
	[Remark] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_Remark] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Temp]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Temp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[server] [nchar](225) NULL,
	[username] [nchar](225) NULL,
	[password] [nchar](225) NULL,
	[signoffby] [nchar](225) NULL,
	[possition] [nchar](225) NULL,
	[phonecontact] [nchar](225) NULL,
	[siteid] [int] NULL,
	[note] [nchar](225) NULL,
	[contactperson] [nchar](225) NULL,
	[nameofbarnch] [nchar](225) NULL,
	[addressofbarnch] [nchar](225) NULL,
	[DeleteData] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_DeleteData]  DEFAULT ((0)),
	[EditServerData] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_EditServerData]  DEFAULT ((0)),
	[Depositintput] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_Depositintput]  DEFAULT ((0)),
	[EditReportsaffter] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_EditReportsaffter]  DEFAULT ((0)),
	[InputDepositInpass] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_InputDepositInpass]  DEFAULT ((0)),
	[PriodMake] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_PriodMake]  DEFAULT ((0)),
	[Systemconfig] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_Systemconfig]  DEFAULT ((0)),
	[uploadBeginbalance] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_uploadBeginbalance]  DEFAULT ((0)),
	[endyearPackdata] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_endyearPackdata]  DEFAULT ((0)),
	[makedepostfromadjamount] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_makedepostfromadjamount]  DEFAULT ((0)),
	[deductdepositamount] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_deductdepositamount]  DEFAULT ((0)),
	[redoInputviry] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_redoInputviry]  DEFAULT ((0)),
	[uploadpriviousPriod] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_uploadpriviousPriod]  DEFAULT ((0)),
	[imagesign] [image] NULL,
	[nationKA] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_nationKA]  DEFAULT ((0)),
	[status] [bit] NOT NULL CONSTRAINT [DF_tbl_Temp_status]  DEFAULT ((0)),
 CONSTRAINT [PK_temp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Unsendlist]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Unsendlist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Sorg] [nchar](10) NULL,
	[Customer] [float] NULL,
	[Name] [nvarchar](225) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_unuserCustomer]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_unuserCustomer](
	[Customer] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_unuserCustomer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[Customer] [float] NULL,
	[SOrg] [nvarchar](255) NULL,
	[Name 1] [nvarchar](255) NULL,
	[Telephone 1] [nvarchar](255) NULL,
	[Cusromergroup] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Reportsend] [bit] NULL,
	[SendingGroup] [nchar](50) NULL,
 CONSTRAINT [PK_tblCustomer_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCustomerTmp]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomerTmp](
	[Customer] [float] NULL,
	[SOrg] [nvarchar](255) NULL,
	[Name 1] [nvarchar](255) NULL,
	[Telephone 1] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Reportsend] [bit] NULL,
	[SendingGroup] [nchar](50) NULL,
 CONSTRAINT [PK_tblCustomer2_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEDLP]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEDLP](
	[Sold-to] [float] NULL,
	[Sales Org] [nvarchar](255) NULL,
	[Cust Name] [nvarchar](255) NULL,
	[Invoice Doc Nr] [float] NULL,
	[Outbound Delivery] [nvarchar](255) NULL,
	[Mat Number] [nvarchar](255) NULL,
	[Mat Text] [nvarchar](255) NULL,
	[Billed Qty] [float] NULL,
	[Cond Value] [float] NULL,
	[Mat Group] [nvarchar](255) NULL,
	[Mat Group Text] [nvarchar](255) NULL,
	[UoM] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EmpyGroup] [int] NULL,
 CONSTRAINT [PK_tblEDLP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEDLPfull]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEDLPfull](
	[Sold-to] [float] NULL,
	[Sales Org] [nvarchar](255) NULL,
	[Cust Name] [nvarchar](255) NULL,
	[Invoice Doc Nr] [float] NULL,
	[Outbound Delivery] [nvarchar](255) NULL,
	[Mat Number] [nvarchar](255) NULL,
	[Mat Text] [nvarchar](255) NULL,
	[Billed Qty] [float] NULL,
	[Cond Value] [float] NULL,
	[Mat Group] [nvarchar](255) NULL,
	[Mat Group Text] [nvarchar](255) NULL,
	[UoM] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tblEDLPfull] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFBL5beginbalace]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFBL5beginbalace](
	[Account] [float] NOT NULL,
	[Business Area] [nvarchar](255) NULL,
	[Amount in local currency] [float] NULL,
	[Fullgood amount] [float] NULL,
	[Deposit amount] [float] NULL,
	[Empty Amount] [float] NULL,
	[Empty Amount Notmach] [float] NULL,
	[Adjusted amount] [float] NULL,
	[Payment amount] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codeGroup] [float] NULL,
	[Ketvothuong] [int] NULL,
	[Chaivothuong] [int] NULL,
	[Ketvolit] [int] NULL,
	[Chaivo1lit] [int] NULL,
	[Ketnhuathuong] [int] NULL,
	[Ketnhua1lit] [int] NULL,
	[joy20l] [int] NULL,
	[Binhpmicc02] [int] NULL,
	[binhpmix9l] [int] NULL,
	[palletgo] [int] NULL,
	[paletnhua] [int] NULL,
	[cal] [int] NULL,
 CONSTRAINT [PK_tblFBL5beginbalace] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFBL5beginbalaceTemp]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFBL5beginbalaceTemp](
	[Account] [float] NOT NULL,
	[Business Area] [nvarchar](255) NULL,
	[Amount in local currency] [float] NULL,
	[Fullgood amount] [float] NULL,
	[Deposit amount] [float] NULL,
	[Empty Amount] [float] NULL,
	[Empty Amount Notmach] [float] NULL,
	[Adjusted amount] [float] NULL,
	[Payment amount] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codeGroup] [float] NULL,
	[Ketvothuong] [int] NULL,
	[Chaivothuong] [int] NULL,
	[Ketvolit] [int] NULL,
	[Chaivo1lit] [int] NULL,
	[Ketnhuathuong] [int] NULL,
	[Ketnhua1lit] [int] NULL,
	[joy20l] [int] NULL,
	[Binhpmicc02] [int] NULL,
	[binhpmix9l] [int] NULL,
	[palletgo] [int] NULL,
	[paletnhua] [int] NULL,
 CONSTRAINT [PK_tblFBL5beginbalacetm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFBL5N]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFBL5N](
	[Fbl5nID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](255) NULL,
	[Assignment] [nvarchar](255) NULL,
	[Posting Date] [date] NULL,
	[Document Type] [nvarchar](255) NULL,
	[Document Number] [float] NULL,
	[Business Area] [nvarchar](255) NULL,
	[Amount in local currency] [float] NULL,
	[Completed use] [bit] NULL,
 CONSTRAINT [PK_tblFBL5N] PRIMARY KEY CLUSTERED 
(
	[Fbl5nID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFBL5Nnew]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFBL5Nnew](
	[Account] [float] NOT NULL,
	[Posting Date] [date] NULL,
	[Document Type] [nvarchar](255) NULL,
	[Document Number] [float] NULL,
	[Business Area] [nvarchar](255) NULL,
	[Invoice] [nvarchar](255) NULL,
	[Formula invoice date] [date] NULL,
	[Amount in local currency] [float] NULL,
	[Invoice Amount] [float] NULL,
	[Fullgood amount] [float] NULL,
	[Deposit amount] [float] NULL,
	[Empty Amount] [float] NULL,
	[Empty Amount Notmach] [float] NULL,
	[Payment amount] [float] NULL,
	[Adjusted amount] [float] NULL,
	[Assignment] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[codeGroup] [float] NULL,
	[SoDelivery] [nvarchar](255) NULL,
	[Ketvothuong] [int] NULL,
	[Chaivothuong] [int] NULL,
	[Ketvolit] [int] NULL,
	[Chaivo1lit] [int] NULL,
	[Ketnhuathuong] [int] NULL,
	[Ketnhua1lit] [int] NULL,
	[joy20l] [int] NULL,
	[Binhpmicc02] [int] NULL,
	[binhpmix9l] [int] NULL,
	[palletgo] [int] NULL,
	[paletnhua] [int] NULL,
	[userupdate] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Completed use] [bit] NULL,
	[name] [nchar](225) NULL,
	[Tempmark] [bit] NOT NULL,
 CONSTRAINT [PK_tblFBL5Nnew] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFBL5NnewRptbalance]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFBL5NnewRptbalance](
	[Account] [float] NOT NULL,
	[Posting Date] [date] NULL,
	[Document Number] [float] NULL,
	[Amount in local currency] [float] NULL,
	[Invoice Amount] [float] NULL,
	[Fullgood amount] [float] NULL,
	[Deposit amount] [float] NULL,
	[Payment amount] [float] NULL,
	[Adjusted amount] [float] NULL,
	[codeGroup] [float] NULL,
	[Ketvothuong] [int] NULL,
	[Chaivothuong] [int] NULL,
	[Ketvolit] [int] NULL,
	[Chaivo1lit] [int] NULL,
	[Ketnhuathuong] [int] NULL,
	[Ketnhua1lit] [int] NULL,
	[joy20l] [int] NULL,
	[Binhpmicc02] [int] NULL,
	[binhpmix9l] [int] NULL,
	[palletgo] [int] NULL,
	[paletnhua] [int] NULL,
	[username] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tblFBL5NnewRptbalance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFBL5Nnewthisperiod]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFBL5Nnewthisperiod](
	[Account] [float] NOT NULL,
	[Posting Date] [date] NULL,
	[Document Type] [nvarchar](255) NULL,
	[Document Number] [float] NULL,
	[Business Area] [nvarchar](255) NULL,
	[Invoice] [nvarchar](255) NULL,
	[Formula invoice date] [date] NULL,
	[Amount in local currency] [float] NULL,
	[Invoice Amount] [float] NULL,
	[Fullgood amount] [float] NULL,
	[Deposit amount] [float] NULL,
	[Empty Amount] [float] NULL,
	[Empty Amount Notmach] [float] NULL,
	[Payment amount] [float] NULL,
	[Adjusted amount] [float] NULL,
	[Assignment] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[codeGroup] [float] NULL,
	[SoDelivery] [nvarchar](255) NULL,
	[Ketvothuong] [int] NULL,
	[Chaivothuong] [int] NULL,
	[Ketvolit] [int] NULL,
	[Chaivo1lit] [int] NULL,
	[Ketnhuathuong] [int] NULL,
	[Ketnhua1lit] [int] NULL,
	[joy20l] [int] NULL,
	[Binhpmicc02] [int] NULL,
	[binhpmix9l] [int] NULL,
	[palletgo] [int] NULL,
	[paletnhua] [int] NULL,
	[userupdate] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Completed use] [bit] NULL,
	[name] [nvarchar](255) NULL,
	[COL value] [float] NULL,
 CONSTRAINT [PK_tblFBL5Nnewthis] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFBL5NTempRPtview]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFBL5NTempRPtview](
	[Account] [float] NOT NULL,
	[Business Area] [nvarchar](255) NULL,
	[Amount in local currency] [float] NULL,
	[Invoice Amount] [float] NULL,
	[Fullgood amount] [float] NULL,
	[Deposit amount] [float] NULL,
	[Empty Amount] [float] NULL,
	[Payment amount] [float] NULL,
	[Adjusted amount] [float] NULL,
	[codeGroup] [float] NULL,
	[Ketvothuong] [int] NULL,
	[Chaivothuong] [int] NULL,
	[Ketvolit] [int] NULL,
	[Chaivo1lit] [int] NULL,
	[Ketnhuathuong] [int] NULL,
	[Ketnhua1lit] [int] NULL,
	[joy20l] [int] NULL,
	[Binhpmicc02] [int] NULL,
	[binhpmix9l] [int] NULL,
	[palletgo] [int] NULL,
	[paletnhua] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tblFBL5NnewthisTemp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFBL5NthisperiodSum]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFBL5NthisperiodSum](
	[Account] [float] NOT NULL,
	[Region] [nvarchar](255) NULL,
	[Customer_Name] [nvarchar](255) NULL,
	[FBL5N amountps] [float] NULL,
	[FBL5N amountdk] [float] NULL,
	[FBL5N amountbg] [float] NULL,
	[FBL5N amount] [float] NULL,
	[Payment amountps] [float] NULL,
	[Payment amountdk] [float] NULL,
	[Payment amountbg] [float] NULL,
	[Adj amountdk] [float] NULL,
	[Adj amountbg] [float] NULL,
	[Adj amountps] [float] NULL,
	[Fullgood amountps] [float] NULL,
	[Fullgood amountdk] [float] NULL,
	[Fullgood amountbg] [float] NULL,
	[Fullgood amount] [float] NULL,
	[Empty Amountps] [float] NULL,
	[Empty Amountdk] [float] NULL,
	[Empty Amountbg] [float] NULL,
	[Empty Amount] [float] NULL,
	[Deposit amountps] [float] NULL,
	[Deposit amountdk] [float] NULL,
	[Deposit amountbg] [float] NULL,
	[Deposit_amount] [float] NULL,
	[Ketvothuongdk] [int] NULL,
	[Ketvothuongbg] [int] NULL,
	[Ketvothuongps] [int] NULL,
	[Ketvothuong] [int] NULL,
	[Chaivothuong] [int] NULL,
	[Chaivothuongdk] [int] NULL,
	[Chaivothuongbg] [int] NULL,
	[Chaivothuongps] [int] NULL,
	[Ketvolitdk] [int] NULL,
	[Ketvolitbg] [int] NULL,
	[Ketvolitps] [int] NULL,
	[Ketvolit] [int] NULL,
	[Chaivo1lit] [int] NULL,
	[Chaivo1litdk] [int] NULL,
	[Chaivo1litbg] [int] NULL,
	[Chaivo1litps] [int] NULL,
	[Ketnhuathuong] [int] NULL,
	[Ketnhuathuongdk] [int] NULL,
	[Ketnhuathuongbg] [int] NULL,
	[Ketnhuathuongps] [int] NULL,
	[Ketnhua1lit] [int] NULL,
	[Ketnhua1litdk] [int] NULL,
	[Ketnhua1litbg] [int] NULL,
	[Ketnhua1litps] [int] NULL,
	[joy20l] [int] NULL,
	[joy20ldk] [int] NULL,
	[joy20lbg] [int] NULL,
	[joy20lps] [int] NULL,
	[Binhpmicc02] [int] NULL,
	[Binhpmicc02dk] [int] NULL,
	[Binhpmicc02bg] [int] NULL,
	[Binhpmicc02ps] [int] NULL,
	[binhpmix9ldk] [int] NULL,
	[binhpmix9lbg] [int] NULL,
	[binhpmix9l] [int] NULL,
	[binhpmix9lps] [int] NULL,
	[palletgo] [int] NULL,
	[palletgodk] [int] NULL,
	[palletgobg] [int] NULL,
	[palletgops] [int] NULL,
	[paletnhua] [int] NULL,
	[paletnhuadk] [int] NULL,
	[paletnhuabg] [int] NULL,
	[paletnhuaps] [int] NULL,
	[Reportsend] [bit] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RealBalance] [float] NULL,
	[Payment amount] [float] NULL,
	[Adj amount] [float] NULL,
 CONSTRAINT [PK_tblFBL5Nnewthissum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNKAArletterRpts]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNKAArletterRpts](
	[GroupLetter] [nvarchar](255) NULL,
	[GroupName] [nvarchar](255) NULL,
	[Nameletter] [nvarchar](255) NULL,
	[tongnonuoc] [float] NULL,
	[tongtienthanhtoan] [float] NULL,
	[tongno] [float] NULL,
	[toDate] [date] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stt] [int] NULL,
	[returndate] [date] NULL,
	[prt] [bit] NULL,
	[Hideprint] [bit] NULL,
 CONSTRAINT [PK_tbl_nkaArletterRpts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNKACustomer]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNKACustomer](
	[No] [float] NULL,
	[Customer] [float] NULL,
	[SOrg] [nvarchar](255) NULL,
	[Area] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Group] [nvarchar](255) NULL,
	[Group Letter] [nvarchar](255) NULL,
	[Branch] [nvarchar](255) NULL,
	[IncoT] [nvarchar](255) NULL,
	[KeyAcc] [nvarchar](255) NULL,
	[Pt] [nvarchar](255) NULL,
	[Plant] [nvarchar](255) NULL,
	[ASM] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Name in letter] [nvarchar](255) NULL,
	[Name's Account of Customer] [nvarchar](255) NULL,
	[Mail] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Account] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNKAdetailDirectUp]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNKAdetailDirectUp](
	[Account] [float] NULL,
	[Group] [nvarchar](255) NULL,
	[Group Letter] [nvarchar](255) NULL,
	[Name letter] [nvarchar](255) NULL,
	[Assignment] [nvarchar](255) NULL,
	[Document Type] [nvarchar](255) NULL,
	[Document Number] [float] NULL,
	[Document Date] [datetime] NULL,
	[Business Area] [nvarchar](255) NULL,
	[PF Inv Date] [datetime] NULL,
	[Invoice Registration No#] [nvarchar](255) NULL,
	[PF Inv Number] [nvarchar](255) NULL,
	[Content + VAT] [float] NULL,
	[Extended Reference] [nvarchar](255) NULL,
	[Net due date] [datetime] NULL,
	[Arrears after net due date] [float] NULL,
	[REMARK] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tblNKAdetailDirectUp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblVat]    Script Date: 5/27/2021 2:04:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Invoice Registration Number] [nvarchar](255) NULL,
	[Invoice Number] [nvarchar](255) NULL,
	[SAP Delivery Number] [float] NULL,
	[SAP Invoice Number] [float] NULL,
	[Pro Forma Date] [date] NULL,
	[Invoice Amount Before VAT] [float] NULL,
	[VAT Amount] [float] NULL,
	[Customer Number] [float] NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Street Address] [nvarchar](255) NULL,
	[Region] [nvarchar](50) NULL,
	[Statuscheck] [bit] NULL,
 CONSTRAINT [PK_tblVat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_Comboundtemp] ON 

INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000003, 70000003, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI CÁT LINH', 492928, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000004, 70000004, N'CÔNG TY TNHH THƯƠNG MẠI NAM CƯỜNG', 492929, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000004, 70000004, N'CÔNG TY TNHH THƯƠNG MẠI NAM CƯỜNG', 492930, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000005, 70000005, N'CÔNG TY TNHH THƯƠNG MẠI HẠNH HỒNG', 492931, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000005, 70000005, N'CÔNG TY TNHH THƯƠNG MẠI HẠNH HỒNG', 492932, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000050, 70000050, N'HỘ KINH DOANH PARANATURAL', 492933, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000052, 70000052, N'CÔNG TY TNHH DỊCH VỤ KHÁCH SẠN', 492934, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000052, 70000052, N'CÔNG TY TNHH DỊCH VỤ KHÁCH SẠN NHÀ HÀNG SƯ TỬ', 492935, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000207, 70000207, N'HÀ THỊ MAI', 492936, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000207, 70000207, N'HÀ THỊ MAI', 492937, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000210, 70000210, N'NGUYỄN THỊ VÂN', 492938, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000210, 70000210, N'NGUYỄN THỊ VÂN', 492939, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000212, 70000212, N'MAI THỊ MẾN', 492940, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000361, 70000361, N'CÔNG TY CỔ PHẦN PHÁT TRIỂN', 492941, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70000361, 70000361, N'CÔNG TY CỔ PHẦN PHÁT TRIỂN THƯƠNG MẠI VÀ DU LỊCH QUỐC TẾ NGÔI SAO', 492942, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70003619, 70003619, N'LÊ VĂN THUẬN', 492943, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70003619, 70003619, N'LÊ VĂN THUẬN', 492944, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70028762, 70028762, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI', 492945, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70028763, 70028763, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI', 492946, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70028763, 70028763, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI', 492947, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70028763, 70028763, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠITHÀNH PHỐ HỒ CHÍ MINH', 492948, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70028764, 70028764, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI', 492949, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70028764, 70028764, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠITHÀNH PHỐ HỒ CHÍ MINH', 492950, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70029364, 70029364, N'CÔNG TY TNHH PHÁT TRIỂN HOÀNG SA', 492951, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70029364, 70029364, N'CỬA HÀNG HOÀNG SA', 492952, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70029379, 70029379, N'CÔNG TY CỔ PHẦN XÂY DỰNG', 492953, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70029379, 70029379, N'CÔNG TY CỔ PHẦN XÂY DỰNG VÀ XUẤT NHẬP KHẨU TỔNG HỢP', 492954, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70029380, 70029380, N'NGUYỄN VĂN NGHỊ', 492955, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70029380, 70029380, N'NGUYỄN VĂN NGHỊ', 492956, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033249, 70033249, N'HỘ KINH DOANH CÁ THỂ THÙY DUNG', 492957, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033249, 70033249, N'HỘ KINH DOANH CÁ THỂ THÙY DUNG NHÀ HÀNG SẮC HUẾ', 492958, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033281, 70033281, NULL, 492959, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033281, 70033281, N'HỒ THỊ ĐIỂM', 492960, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033388, 70033388, N'CÔNG TY TNHH PHÚ ĐẠT', 492961, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033548, 70033548, NULL, 492962, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033548, 70033548, N'NGUYỄN XUÂN HÒE', 492963, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033566, 70033566, N'TẠ HỮU BẢN', 492964, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033566, 70033566, N'TẠ HỮU BẢN', 492965, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033567, 70033567, N'HỘ KINH DOANH CÁ THỂ BÁCH HÓA', 492966, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70033567, 70033567, N'HỘ KINH DOANH CÁ THỂ BÁCH HÓA TỔNG HỢP HỌC VIỆN AN NINH', 492967, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034001, 70034001, N'NGUYỄN THỊ HẠT', 492968, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034004, 70034004, NULL, 492969, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034004, 70034004, N'CHU VĂN THỦY', 492970, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034323, 70034323, N'NGUYỄN THỊ QUẢNG', 492971, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034333, 70034333, N'CÔNG TY TNHH THƯƠNG MẠI HẢI TẤN', 492972, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034910, 70034910, N'NGUYỄN THỊ NHÀI', 492973, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034910, 70034910, N'NGUYỄN THỊ NHÀI', 492974, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034921, 70034921, N'CÔNG TY CỔ PHẦN BEONE VIỆT NAM', 492975, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034932, 70034932, N'PHÙNG VĂN THÌN', 492976, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034936, 70034936, N'CÔNG TY TNHH CJ CGV VIỆT NAM-', 492977, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70034936, 70034936, N'CÔNG TY TNHH CJ CGV VIỆT NAM- CHI NHÁNH QUẢNG NINH', 492978, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70035486, 70035486, N'CHI NHÁNH CÔNG TY TNHH TRUNG TÂM', 492979, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70035486, 70035486, N'CNHÁNH CTY TNHH TRUNG TÂM TMẠI LOTTE VIỆT NAM TẠI QUẬN ĐỐNG ĐA', 492980, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70035490, 70035490, N'CÔNG TY CỔ PHẦN YMTRIBE', 492981, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70035654, 70035654, N'CÔNG TY CỔ PHẦN AAC THƯƠNG MẠI', 492982, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70035654, 70035654, N'CÔNG TY CỔ PHẦN AAC THƯƠNG MẠI VÀ DỊCH VỤ QUỐC TẾ', 492983, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70035752, 70035752, NULL, 492984, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70035752, 70035752, N'CÔNG TY TNHH THƯƠNG MẠI NGUYÊN VŨ', 492985, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70035756, 70035756, N'CÔNG TY TNHH ĐẦU TƯ THƯƠNG MẠI', 492986, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70036628, 70036628, N'CÔNG TY TNHH KINH DOANH', 492987, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70036628, 70036628, N'CÔNG TY TNHH KINH DOANH THƯƠNG MẠI BẢO LINH', 492988, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70036905, 70036905, N'CÔNG TY CỔ PHẦN DỊCH VỤ AN VIỆT', 492989, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70036907, 70036907, N'CÔNG TY TNHH THƯƠNG MẠI', 492990, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70036907, 70036907, N'CÔNG TY TNHH THƯƠNG MẠI VÀ KỸ THUẬT ACC VIỆT NAM', 492991, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70036912, 70036912, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI', 492992, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70036912, 70036912, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠITHÀNH PHỐ HỒ CHÍ MINH', 492993, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70036915, 70036915, N'CÔNG TY CỔ PHẦN ĐẦU TƯ TNG VIỆT', 492994, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70036915, 70036915, N'CÔNG TY CỔ PHẦN ĐẦU TƯ TNG VIỆT NAM', 492995, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70037457, 70037457, N'CÔNG TY TNHH HABIT VIỆT NAM', 492996, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70037469, 70037469, N'CÔNG TY TNHH TRUYỀN THÔNG', 492997, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70037469, 70037469, N'CÔNG TY TNHH TRUYỀN THÔNGBẠCH KIM M.V.P', 492998, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70044480, 70044480, N'CÔNG TY CỔ PHẦN PLA VIỆT NAM', 492999, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70062543, 70062543, N'CÔNG TY  TNHH TRUYỀN THÔNG', 493000, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70062543, 70062543, N'CÔNG TY  TNHH TRUYỀN THÔNG VĨNH THÀNH', 493001, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70085588, 70085588, N'CÔNG TY CỔ PHẦN XÚC TIẾN', 493002, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70085588, 70085588, N'CTY CỔ PHẦN XÚC TIẾN THƯƠNG MẠI VÀ DỊCH VỤ ĐẠI DƯƠNG XANH', 493003, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70085592, 70085592, N'CÔNG TY CỔ PHẦN S O L NHẬT BẢN', 493004, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70085592, 70085592, N'CÔNG TY TNHH MỘT THÀNH VIÊN', 493005, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70085935, 70085935, N'DOANH NGHIỆP TƯ NHÂN TUẤN MINH', 493006, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70086221, 70086221, N'CÔNG TY TNHH MÁY TÍNH DƯƠNG THƯ', 493007, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70093263, 70093263, N'ĐỖ ANH TUẤN', 493008, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70143366, 70143366, NULL, 493009, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70143366, 70143366, N'CHI NHÁNH HÀ TĨNH - CÔNG TY CỔ', 493010, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70143366, 70143366, N'CHI NHÁNH HÀ TĨNH - CÔNG TY CỔSIÊU THỊ VINMART', 493011, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70144146, 70144146, N'CÔNG TY CỔ PHẦN DỊCH VỤ VÀ', 493012, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70144146, 70144146, N'CÔNG TY CỔ PHẦN DỊCH VỤ VÀ PHÁT TRIỂN HOÀNG KIM', 493013, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70144149, 70144149, N'NGUYỄN THỊ KIM LIÊN', 493014, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70144203, 70144203, N'CÔNG TY LIÊN DOANH LÀNG', 493015, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70144907, 70144907, N'CÔNG TY TNHH MAI HẢI', 493016, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70144990, 70144990, N'CÔNG TY CỔ PHẦN PHÁT TRIỂN', 493017, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70144990, 70144990, N'CÔNG TY CỔ PHẦN PHÁT TRIỂN SIÊU THỊ HÀ NỘI', 493018, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70145588, 70145588, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493019, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70145588, 70145588, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ DỊCH VỤ BHX HÀ NỘI', 493020, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146394, 70146394, N'ĐẶNG THÁI SAN', 493021, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146400, 70146400, N'DOANH NGHIỆP TƯ NHÂN PHÚ QUÝ', 493022, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146400, 70146400, N'DOANH NGHIỆP TƯ NHÂN PHÚ QUÝ', 493023, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146832, 70146832, N'LÊ THỊ LÂM', 493024, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146832, 70146832, N'LÊ THỊ LÂM', 493025, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146837, 70146837, N'CHI NHÁNH CÔNG TY TRÁCH NHIỆM', 493026, N'VN12      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146839, 70146839, N'CÔNG TY TNHH DỊCH VỤ EB', 493027, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146840, 70146840, N'CÔNG TY TNHH DỊCH VỤ EB', 493028, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146840, 70146840, N'CÔNG TY TNHH DỊCH VỤ EB', 493029, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146842, 70146842, N'ĐẶNG QUANG NHUNG', 493030, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146842, 70146842, N'ĐẶNG QUANG NHUNG', 493031, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146843, 70146843, N'VŨ ĐÌNH CẢNH', 493032, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146900, 70146900, N'PHẠM VĂN VIỆT', 493033, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70146902, 70146902, N'CÔNG TY TNHH TM & DV SƠN THƯƠNG', 493034, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70147342, 70147342, NULL, 493035, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70147347, 70147347, NULL, 493036, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70147351, 70147351, N'KHÁCH SẠN MƯỜNG THANH QUẢNG NIN', 493037, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70147894, 70147894, N'CHI NHÁNH CÔNG TY TNHH MỘT', 493038, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148063, 70148063, N'NHÀ HÀNG TRUNG KIÊN', 493039, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148063, 70148063, N'NHÀ HÀNG TRUNG KIÊN', 493040, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148080, 70148080, N'PHẠM ĐỨC CHUNG', 493041, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148080, 70148080, N'PHẠM ĐỨC CHUNG', 493042, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148427, 70148427, N'CÔNG TY TNHH THƯƠNG MẠI VÀ', 493043, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148427, 70148427, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ CHÀO HÀ NỘI', 493044, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148522, 70148522, N'DOANH NGHIỆP TƯ NHÂN THẮNG CHANH', 493045, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148522, 70148522, N'DOANH NGHIỆP TƯ NHÂN THẮNG CHANH', 493046, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148523, 70148523, N'CÔNG TY CỔ PHẦN PHÁT TRIỂN', 493047, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148709, 70148709, N'DOANH NGHIỆP TƯ NHÂN HƯNG BÍCH', 493048, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148845, 70148845, N'ĐỨC TÍNH', 493049, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148847, 70148847, N'CHI NHÁNH NINH BÌNH -CÔNG TY CỔ', 493050, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148847, 70148847, N'CHI NHÁNH NINH BÌNH -CÔNG TY CỔ PHẦN SIÊU THỊ VINMART', 493051, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148925, 70148925, N'CÔNG TY TNHH THƯƠNG MẠI', 493052, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148927, 70148927, N'BÌNH GIANG MART-CHI NHÁNH', 493053, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148927, 70148927, N'BÌNH GIANG MART-CHI NHÁNH CÔNG TY TNHH BÌNH GIANG', 493054, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148930, 70148930, N'CÔNG TY TNHH KINH DOANH', 493055, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148930, 70148930, N'CÔNG TY TNHH KINH DOANH TỔNG HỢP BẢO LAN', 493056, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148932, 70148932, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493057, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148932, 70148932, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ DỊCH VỤ TỔNG HỢP ĐỨC THÀNH', 493058, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148936, 70148936, N'CÔNG TY TNHH DUA - DUA', 493059, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70148943, 70148943, NULL, 493060, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149075, 70149075, NULL, 493061, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149075, 70149075, N'LÊ THỊ CHIẾN', 493062, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149088, 70149088, N'CÔNG TY CỔ PHẦN DỊCH VỤ', 493063, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149088, 70149088, N'CÔNG TY CỔ PHẦN DỊCH VỤ THƯƠNG MẠI VIỆT AN', 493064, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149128, 70149128, N'TRẦN THỊ MỸ THO', 493065, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149132, 70149132, N'ST TIỆN LỢI HANDY MART-CN CTY CP CÔNG NGHIỆP MỎ VÀ LUYỆN KIM VN', 493066, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149143, 70149143, N'TRUNG TÂM DỊCH VỤ TRƯỜNG', 493067, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149143, 70149143, N'TRUNG TÂM DỊCH VỤ TRƯỜNG ĐẠI HỌC KIẾN TRÚC HÀ NỘI', 493068, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149370, 70149370, N'CÔNG TY CỔ PHẦN DỊCH VỤ', 493069, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70149400, 70149400, N'BÙI THỊ HÀO', 493070, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70151612, 70151612, N'CÔNG TY CỔ PHẦN ĐẦU VIET KOREA TRADE', 493071, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70151612, 70151612, N'CÔNG TY CỔ PHẦN VIỆT KOREA TRADE', 493072, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70151614, 70151614, N'CÔNG TY CỔ PHẦN KHAI THÁC VÀ', 493073, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70151614, 70151614, N'CÔNG TY CỔ PHẦN KHAI THÁC VÀ QUẢN LÝ CHỢ ĐẦU MỐI HÀ NỘI', 493074, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70151617, 70151617, N'CÔNG TY CỔ PHẦN ĐẦU TƯ', 493075, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70151617, 70151617, N'CÔNG TY CỔ PHẦN ĐẦU TƯ TONKIN GPOUP', 493076, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70151619, 70151619, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ', 493077, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70151648, 70151648, N'LÂM NGỌC QUỲNH', 493078, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70152250, 70152250, N'CÔNG TY CỔ PHẦN DỊCH VỤ', 493079, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70179769, 70179769, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493080, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70192597, 70192597, N'CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY DỰNG', 493081, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70192601, 70192601, N'NGUYỄN THỊ ÚT', 493082, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70193730, 70193730, NULL, 493083, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70193730, 70193730, N'NGUYỄN MINH TIẾN', 493084, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70193735, 70193735, N'CÔNG TY CỔ PHẦN INTIMEX VIỆT NAM', 493085, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70193812, 70193812, N'CÔNG TY TNHH MTV KHÁCH SẠN SUNWAY HÀ NỘI', 493086, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70193812, 70193812, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493087, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70193814, 70193814, N'CÔNG TY TNHH THÁI HƯNG', 493088, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70195370, 70195370, N'CÔNG TY TNHH DỊCH VỤ ĂN UỐNG', 493089, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70195373, 70195373, N'CÔNG TY TNHH DỊCH VỤ ĂN UỐNG', 493090, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70195373, 70195373, N'CÔNG TY TNHH DỊCH VỤ ĂN UỐNG BA SAO', 493091, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70195377, 70195377, N'CÔNG TY TNHH DỊCH VỤ ĂN UỐNG', 493092, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70195379, 70195379, N'ĐỖ THỊ SINH', 493093, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70195675, 70195675, N'CÔNG TY CỔ PHẦN TM VÀ DV CAO ĐẠT', 493094, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70195675, 70195675, N'CÔNG TY TNHH TM VÀ DV CAO ĐẠT', 493095, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70199010, 70199010, N'CHI NHÁNH CÔNG TY TNHH DỊCH VỤ', 493096, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70199072, 70199072, N'BÙI QUANG TỨ', 493097, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70199072, 70199072, N'BÙI QUANG TỨ', 493098, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70199073, 70199073, N'CÔNG TY TNHH ĐỒNG HỒ CÁT', 493099, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70199082, 70199082, N'CÔNG TY TNHH THƯƠNG MẠI &', 493100, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70199082, 70199082, N'CÔNG TY TNHH THƯƠNG MẠI & DỊCH VỤ QUỲNH HƯƠNG NB', 493101, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70208047, 70208047, N'CÔNG TY TNHH HƯƠNG GIANG GROUP', 493102, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70208047, 70208047, N'CÔNG TY TNHH HƯƠNG GIANG GROUP', 493103, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70208055, 70208055, N'CÔNG TY CỔ PHẦN ĐẦU TƯ LONG BIÊN', 493104, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210075, 70210075, N'THÁI BBQ', 493105, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210214, 70210214, N'CHI NHÁNH CÔNG TY TNHH DỊCH VỤ', 493106, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210214, 70210214, N'CHI NHÁNH CÔNG TY TNHH DỊCH VỤ THỰC PHẨM VÀ GIẢI KHÁT VIỆT NAM', 493107, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210628, 70210628, N'CÔNG TY TNHH THƯƠNG MẠI ÁNH HUÊ', 493108, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210628, 70210628, N'CÔNG TY TNHH THƯƠNG MẠI ÁNH HUÊ', 493109, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210730, 70210730, N'HỢP TÁC XÃ ĐINH GIA', 493110, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210730, 70210730, N'HỢP TÁC XÃ ĐINH GIA- KHÁCH SẠN', 493111, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210739, 70210739, N'CHI NHÁNH HẢI DƯƠNG -CÔNG TY CỔ PH', 493112, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210739, 70210739, N'CHI NHÁNH HẢI DƯƠNG -CÔNG TY CỔ PHSIÊU THỊ VINMART', 493113, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70210742, 70210742, N'PHẠM VĂN NHÂM', 493114, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70211870, 70211870, N'CÔNG TY TNHH THƯƠNG MẠI', 493115, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70211870, 70211870, N'CÔNG TY TNHH THƯƠNG MẠI PHÁT TRIỂN ĐỨC HIỂN', 493116, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70211878, 70211878, NULL, 493117, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70211878, 70211878, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ THƯƠNG', 493118, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70211878, 70211878, N'CÔNG TY CỔ PHẦN DU LỊCH VÀ KHÁCH SẠN NGÂN HÀ', 493119, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70211976, 70211976, N'CÔNG TY CỔ PHẦN LIFESTYLE VIỆT NAM', 493120, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212084, 70212084, N'CÔNG TY CỔ PHẦN DỊCH VỤ HÀNG', 493121, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212084, 70212084, N'CÔNG TY CỔ PHẦN DỊCH VỤ HÀNG KHÔNG MIỀN BẮC', 493122, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212256, 70212256, NULL, 493123, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212256, 70212256, N'CÔNG TY TNHH HỒNG NHƯƠNG', 493124, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212263, 70212263, N'CHI NHÁNH CÔNG TY TNHH MỘT THÀNH', 493125, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212263, 70212263, N'CN CTY TNHH MTV THƯƠNG MẠI VÀ ĐẦU TƯ LIÊN Á CHÂU TẠI HÀ NỘI', 493126, N'VN12      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212267, 70212267, N'CÔNG TY TNHH DU LỊCH VÀ DỊCH VỤ', 493127, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212267, 70212267, N'CÔNG TY TNHH DU LỊCH VÀ DỊCH VỤ HÀ LONG', 493128, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212274, 70212274, N'CÔNG TY CỔ PHẦN CUNG ỨNG DỊCH V', 493129, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212274, 70212274, N'CÔNG TY CỔ PHẦN CUNG ỨNG DỊCH VỤ VÀ THƯƠNG MẠI THĂNG LONG', 493130, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212335, 70212335, N'CÔNG TY TNHH DGN VIỆT NAM', 493131, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212335, 70212335, N'CÔNG TY TNHH DGN VIỆT NAM SKY CAFÉ', 493132, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212766, 70212766, N'CÔNG TY CỔ PHẦN KHOÁNG SẢN', 493133, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70212777, 70212777, N'CÔNG TY TNHH QUỐC TẾ UNILEVER', 493134, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70213307, 70213307, N'CÔNG TY TNHH TRUNG TÂM THƯƠNG', 493135, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70213307, 70213307, N'CTY TNHH TRUNG TÂM TM LOTTE VIỆT NAM-CNHÁNH QUẬN BA ĐÌNH', 493136, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70213356, 70213356, N'CÔNG TY CỔ PHẦN THỰC PHẨM', 493137, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70213380, 70213380, N'ĐÀO KHẮC CHUNG', 493138, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70213380, 70213380, N'ĐÀO KHẮC CHUNG', 493139, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217605, 70217605, N'CANTEEN TRƯỜNG THPT XUÂN ĐỈNH', 493140, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217606, 70217606, N'CANTEEN TRƯỜNG THPT LÊ QUÝ ĐÔN', 493141, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217607, 70217607, N'CANTEEN TRƯỜNG THCS  NGÔ QUYỀN', 493142, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217608, 70217608, N'CANTEEN TRƯỜNG THCS  ĐOÀN KẾT', 493143, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217610, 70217610, N'CANTEEN TRƯỜNG THPT NG THỊ MINH K', 493144, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217611, 70217611, N'CANTEEN TRƯỜNG PTTH YÊN HÒA', 493145, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217612, 70217612, N'CANTEEN TRƯỜNG THCS VIỆT NAM -', 493146, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217613, 70217613, N'CANTEEN TRƯỜNG THPT NGUYỄN TRÃI', 493147, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217615, 70217615, N'CANTEEN TRƯỜNG THCS', 493148, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217615, 70217615, N'CANTEEN TRƯỜNG THCS NGUYỄN PHONG SẮC', 493149, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217616, 70217616, N'CANTEEN GIẢI KHÁT TRƯỜNG', 493150, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217616, 70217616, N'CANTEEN TRƯỜNG THPT NGUYỄN HUỆ', 493151, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217617, 70217617, N'CANTEEN TRƯỜNG THCS ĐÔNG THÁI', 493152, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217723, 70217723, N'NGUYỄN THỊ MAI', 493153, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217728, 70217728, N'CÔNG TY TNHH TÂN THỊNH HƯNG', 493154, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217728, 70217728, N'CÔNG TY TNHH TÂN THỊNH HƯNG', 493155, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217937, 70217937, N'CÔNG TY TNHH THƯƠNG MẠI VÀ', 493156, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70217937, 70217937, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ KIỀU GIA', 493157, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70218082, 70218082, N'CANTEEN TRƯỜNG PTTH ĐẠI MỖ', 493158, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70218116, 70218116, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ', 493159, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70218116, 70218116, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ THƯƠNG MẠI NAM TÂY HỒ', 493160, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70222862, 70222862, N'CÔNG TY TNHH HS F&B HÀ NỘI', 493161, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70222863, 70222863, N'CÔNG TY TNHH ICONE F&B', 493162, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70222864, 70222864, N'KHÁCH SẠN NAMU - CHI NHÁNH CÔNG', 493163, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70222864, 70222864, N'KHÁCH SẠN NAMU-CNHÁNH CTY TNHH MỘT THÀNH VIÊN MỸ HOÀN KIM', 493164, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70223175, 70223175, N'CÔNG TY CỔ PHẦN TẬP ĐOÀN', 493165, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70223175, 70223175, N'CÔNG TY CỔ PHẦN TẬP ĐOÀN QUANG HƯNG', 493166, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70223191, 70223191, NULL, 493167, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70223191, 70223191, N'NGUYỄN THỊ LIÊN', 493168, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70224092, 70224092, N'MAI VĂN SƠN', 493169, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70224092, 70224092, N'MAI VĂN SƠN', 493170, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70224096, 70224096, N'CÔNG TY TNHH NGA CHÍNH', 493171, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225077, 70225077, N'CÔNG TY TNHH THƯƠNG MẠI VÀ', 493172, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225077, 70225077, N'CTY TNHH THƯƠNG MẠI VÀ DỊCH VỤ XUẤT NHẬP KHẨU OSHITSU VN', 493173, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225164, 70225164, N'CANTEEN VIỆN NHI', 493174, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225171, 70225171, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ', 493175, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225171, 70225171, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ DỊCH VỤ TIG VIỆT NAM', 493176, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225408, 70225408, NULL, 493177, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225408, 70225408, N'CHI NHÁNH KHÁCH SẠN MƯỜNG THANH', 493178, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225410, 70225410, NULL, 493179, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225410, 70225410, N'CHI NHÁNH DOANH NGHIỆP TƯ NHÂN XÂY', 493180, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225413, 70225413, N'KHÁCH SẠN MƯỜNG THANH HẠ LONG -', 493181, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225415, 70225415, NULL, 493182, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225415, 70225415, N' KHÁCH SẠN MƯỜNG THANH DIỄN CHÂU', 493183, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225415, 70225415, N'KHÁCH SẠN MƯỜNG THANH DIỄN CHÂU', 493184, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225419, 70225419, N'DOANH NGHIỆP TƯ NHÂN XÂY DỰNG SỐ', 493185, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225420, 70225420, N'KHÁCH SẠN MƯỜNG THANH XA LA -', 493186, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225421, 70225421, N'KHÁCH SẠN MƯỜNG THANH LAI CHÂU-', 493187, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225423, 70225423, N'CHI NHÁNH DOANH NGHIỆP TƯ NHÂN', 493188, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225424, 70225424, N'CHI NHÁNH KHÁCH SẠN MƯỜNG THANH', 493189, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225425, 70225425, N'CHI NHÁNH DOANH NGHIỆP TƯ NHÂN', 493190, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225532, 70225532, N'LÊ XUÂN MẠNH', 493191, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225532, 70225532, N'LÊ XUÂN MẠNH', 493192, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225766, 70225766, N'CÔNG TY TNHH XÚC TIẾN THƯƠNG MẠI', 493193, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225766, 70225766, N'CÔNG TY TNHH XÚC TIẾN THƯƠNG MẠI VÀ DỊCH VỤ TÂY HỒ', 493194, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225773, 70225773, N'CÔNG TY TNHH ĐẦU TƯ MẶT TRỜI ĐỎ', 493195, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225798, 70225798, N'CANTEEN TRƯỜNG CẤP II VĨNH TUY', 493196, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225800, 70225800, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ', 493197, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225800, 70225800, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ DỊCH VỤ TBQ - THÁI BÌNH', 493198, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225851, 70225851, N'CHI NHÁNH HÀ NỘI - CÔNG TY TNHH', 493199, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225851, 70225851, N'CNHÁNH HÀ NỘI - CÔNG TY TNHH THỰC PHẨM VÀ GIẢI KHÁT VIỆT NAM', 493200, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225871, 70225871, N'CÔNG TY TNHH MỘT THÀNH VIÊN', 493201, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70225871, 70225871, N'CÔNG TY TNHH MỘT THÀNH VIÊN VƯỜN ĂN HẢI YẾN', 493202, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226333, 70226333, N'CÔNG TY CỔ PHẦN XÂY DỰNG VÀ THI', 493203, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226333, 70226333, N'CÔNG TY CỔ PHẦN XÂY DỰNG VÀ THIET BỊ MINH HẢI', 493204, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226666, 70226666, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG', 493205, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226666, 70226666, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI DỊCH VỤ THÀNH PHỐ XANH', 493206, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226894, 70226894, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493207, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226901, 70226901, N'CÔNG TY CỔ PHẦN DỊCH VỤ ĐẲNG', 493208, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226908, 70226908, N'CÔNG TY TNHH DỊCH VỤ KHÁCH SẠN', 493209, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226927, 70226927, N'CÔNG TY TNHH PHÁT TRIỂN GIẢNG VO', 493210, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226928, 70226928, N'CÔNG TY TNHH HONEST KITCHEN VIỆT N', 493211, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226928, 70226928, N'CÔNG TY TNHH HONEST KITCHEN VIỆT NAM', 493212, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226941, 70226941, N'CÔNG TY TNHH TOÀN CẦU THV VIỆT N', 493213, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226941, 70226941, N'CÔNG TY TNHH TOÀN CẦU THV VIỆT NAM', 493214, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226952, 70226952, N'CHI NHÁNH CÔNG TY TNHH NHÀ HÀNG', 493215, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226952, 70226952, N'CHI NHÁNH CÔNG TY TNHH NHÀ HÀNG MÓN HUẾ', 493216, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226958, 70226958, N'CÔNG TY TNHH CỔNG VÀNG VINH', 493217, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226958, 70226958, N'CÔNG TY TNHH CỔNG VÀNG VINH', 493218, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226971, 70226971, N'CHI NHÁNH CÔNG TY TRÁCH NHIỆM', 493219, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226972, 70226972, N'CÔNG TY TNHH DỊCH VỤ EB', 493220, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226974, 70226974, N'CÔNG TY TNHH DỊCH VỤ EB', 493221, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226977, 70226977, N'CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN', 493222, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70226977, 70226977, N'CTY TNHH ĐẦU TƯ PHÁT TRIỂN VÀ THƯƠNG MẠI DỊCH VỤ NGỌC MAI', 493223, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70227838, 70227838, NULL, 493224, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70227838, 70227838, N'CÔNG TY CP DỊCH VỤ THƯƠNG MẠI', 493225, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70227838, 70227838, N'CÔNG TY CP DỊCH VỤ THƯƠNG MẠI THÀNH TÂM NTH', 493226, N'VN16      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70227841, 70227841, N'KHÁCH SẠN MƯỜNG THANH HÀ NỘI -', 493227, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70227849, 70227849, N'CÔNG TY CỔ PHẦN TIMEHOUSE', 493228, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228191, 70228191, N'HỢP TÁC XÃ DỊCH VỤ NGUYÊN SINH', 493229, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228195, 70228195, N'CÔNG TY TNHH UNFORM', 493230, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228199, 70228199, N'CÔNG TY TNHH MTV ĐẦU TƯ VÀ PHÁT TRIỂN NÔNG NGHIỆP HÀ NỘI', 493231, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228199, 70228199, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493232, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228201, 70228201, N'CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY DỰNG', 493233, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228201, 70228201, N'CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY DỰNG HOÀNG DƯƠNG', 493234, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228202, 70228202, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ KINH', 493235, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228202, 70228202, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ KINH DOANH THƯƠNG MẠI BẮC HÀ', 493236, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228353, 70228353, N'CÔNG TY CỔ PHẦN PHÁT TRIỂN', 493237, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228357, 70228357, N'KHÁCH SẠN MƯỜNG THANH SAPA-', 493238, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228366, 70228366, NULL, 493239, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228366, 70228366, N'CHI NHÁNH KHÁCH SẠN MƯỜNG THANH', 493240, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228730, 70228730, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493241, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70228730, 70228730, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI MIỀN NÚI THANH HÓA', 493242, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70230593, 70230593, N'CHI NHÁNH THÁI NGUYÊN -', 493243, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70230595, 70230595, N'CÔNG TY TNHH HOA PHƯỢNG', 493244, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70230597, 70230597, N'CÔNG TY TNHH SEO WOO VINA', 493245, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70231076, 70231076, N'CÔNG TY CỔ PHẦN KINH DOANH VÀ', 493246, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70231076, 70231076, N'CÔNG TY CỔ PHẦN KINH DOANH VÀ DỊCH VỤ TRÀNG AN', 493247, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70231950, 70231950, N'CÔNG TY CỔ PHẦN CHUYỄN GIAO', 493248, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70231950, 70231950, N'CÔNG TY CỔ PHẦN CHUYỄN GIAO CÔNG NGHỆ TĐ MART TIẾN ĐẠT', 493249, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70231962, 70231962, NULL, 493250, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70231967, 70231967, N'DOANH NGHIỆP TƯ NHÂN KHÁCH SẠN', 493251, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70231969, 70231969, NULL, 493252, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70231969, 70231969, N'CĂNG TIN SÂN BAY VINH', 493253, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70232229, 70232229, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MA', 493254, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70232229, 70232229, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI KỸ THUẬT A&T VIỆT NAM', 493255, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70232234, 70232234, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN LIÊ', 493256, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70232915, 70232915, N'CHI NHÁNH HẢI PHÒNG - CÔNG TY', 493257, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70233074, 70233074, N'LỪ THỊ THÙY TRANG', 493258, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70233599, 70233599, N'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ', 493259, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70233599, 70233599, N'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ THANH BÌNH', 493260, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70233624, 70233624, N'CÔNG TY TNHH THƯƠNG MẠI DUY ANH', 493261, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70233628, 70233628, N'CÔNG TY CỔ PHẦN HỆ THỐNG SAO KH', 493262, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70233628, 70233628, N'CÔNG TY CỔ PHẦN HỆ THỐNG SAO KHUÊ', 493263, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70233913, 70233913, N'CÔNG TY CỔ PHẦN BÁN LẺ THỰC PH', 493264, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70233913, 70233913, N'CÔNG TY CỔ PHẦN BÁN LẺ THỰC PHẨM VÀ ĐỒ UỐNG -TNC', 493265, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70233949, 70233949, N'CÔNG TY CỔ PHẦN DỊCH VỤ THƯƠNG MẠI', 493266, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234157, 70234157, N'THANH CHÍNH', 493267, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234159, 70234159, N'NHÀ HÀNG 666', 493268, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234165, 70234165, N'CÔNG TY CỔ PHẦN THỰC PHẨM', 493269, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234251, 70234251, N'CÔNG TY TNHH CJ CGV VIỆT NAM -', 493270, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234257, 70234257, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI DỊCH', 493271, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234257, 70234257, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI DỊCH VỤ TỔNG HỢP HAI BÀ TRƯNG', 493272, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234262, 70234262, N'CÔNG TY TNHH AUTOGRILL VFS F&B', 493273, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234482, 70234482, N'CÔNG TY CỔ PHẦN TẬP ĐOÀN', 493274, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234482, 70234482, N'CÔNG TY CỔ PHẦN TẬP ĐOÀN NHẤT THỐNG', 493275, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234483, 70234483, N'CÔNG TY CỔ PHẦN PHÚC CHUNG', 493276, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234529, 70234529, N'CÔNG TY TNHH MOOSE AND ROO VIỆT NA', 493277, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234529, 70234529, N'CÔNG TY TNHH MOOSE AND ROO VIỆT NAM', 493278, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234571, 70234571, N'NGUYỄN MẠNH HÙNG', 493279, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70234659, 70234659, N'NHÀ HÀNG PHƯƠNG NGUYÊN', 493280, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236227, 70236227, N'DOANH NGHIỆP TƯ NHÂN HOÀNG SƠN', 493281, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236232, 70236232, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ', 493282, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236235, 70236235, N'CÔNG TY CỔ PHẦN TÂM ĐỨC CẨM PHA', 493283, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236237, 70236237, N'CÔNG TY CỔ PHẦN NHÀ HÀNG NHẬT', 493284, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236237, 70236237, N'CÔNG TY CỔ PHẦN NHÀ HÀNG VIỆT NHẬT KOSAKA SHINTARO', 493285, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236244, 70236244, N'CÔNG TY CỔ PHẦN F&B BA SAO', 493286, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236249, 70236249, N'CÔNG TY TNHH VIỆT Ý HÀ NỘI CENT', 493287, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236249, 70236249, N'CÔNG TY TNHH VIỆT Ý HÀ NỘI CENT VIỆT Ý MART', 493288, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236755, 70236755, N'CÔNG TY TNHH SẢN XUẤT VÀ THƯƠNG', 493289, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236755, 70236755, N'CÔNG TY TNHH SẢN XUẤT VÀ THƯƠNG MẠI NAM KHÁNH', 493290, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236860, 70236860, N'TRUNG TÂM PHỤC VỤ TRƯỜNG', 493291, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236860, 70236860, N'TRUNG TÂM PHỤC VỤ TRƯỜNG ĐẠI HỌC KINH TẾ QUỐC DÂN', 493292, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236864, 70236864, N'HỘ KINH DOANH ĐẠI LÝ NƯỚC GIẢI', 493293, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70236864, 70236864, N'HỘ KINH DOANH ĐẠI LÝ NƯỚC GIẢI KHÁT VÂN VÂN', 493294, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237153, 70237153, N'CÔNG TY CỔ PHẦN CÔNG NGHỆ NTK', 493295, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237153, 70237153, N'CÔNG TY CỔ PHẦN HƯNG LINH', 493296, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237259, 70237259, N'CHI NHÁNH HẠ LONG - CÔNG TY CỔ', 493297, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237259, 70237259, N'CHI NHÁNH HẠ LONG - CÔNG TY CỔ PHẦN SIÊU THỊ VINMART', 493298, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237547, 70237547, N'CÔNG TY TNHH THƯƠNG MẠI', 493299, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237547, 70237547, N'CÔNG TY TNHH THƯƠNG MẠI TRANG KIM', 493300, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237609, 70237609, N'NGUYỄN THỊ NHƯ HOA', 493301, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237713, 70237713, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI &', 493302, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237713, 70237713, N'CÔNG TY CP THƯƠNG MẠI & ĐẦU TƯ DỊCH VỤ VILAMART VIỆT NAM', 493303, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70237742, 70237742, N'CÔNG TY CỔ PHẦN VÂN SAM', 493304, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238052, 70238052, N'CÔNG TY CỔ PHẦN KHÁCH SẠN', 493305, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238053, 70238053, N'CÔNG TY CỔ PHẦN COLOWIDE VIỆT NA', 493306, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238053, 70238053, N'CÔNG TY CỔ PHẦN COLOWIDE VIỆT NAM', 493307, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238184, 70238184, N'CÔNG TY CỔ PHẦN BIG STAR VIỆT NAM', 493308, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238262, 70238262, N'CÔNG TY TNHH FUSE LOUNGE HÀ NỘI', 493309, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238264, 70238264, N'CÔNG TY TNHH INTOGRANT', 493310, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238270, 70238270, N'NHÀ HÀNG TUẤN TÙNG II', 493311, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238273, 70238273, NULL, 493312, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238274, 70238274, N'CĂNG TIN THPT NGUYỄN TRÃI', 493313, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238514, 70238514, N'CÔNG TY CỔ PHẦN EDEN', 493314, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238525, 70238525, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493315, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238536, 70238536, N'NGUYỄN THỊ HIỆP', 493316, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238539, 70238539, N'CÔNG TY TNHH CUỐN NROLL VIỆT NAM', 493317, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238547, 70238547, N'HỘ KINH DOANH NGUYỄN NGỌC HUÂN', 493318, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70238831, 70238831, N'CHI NHÁNH KHÁCH SẠN MƯỜNG THANH', 493319, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240305, 70240305, N'CHI NHÁNH CÔNG TY TNHH VÒNG TRÒN', 493320, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240517, 70240517, N'DƯƠNG NGỌC UY', 493321, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240519, 70240519, N'NPP - HOÀNG VĂN TRUNG', 493322, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240519, 70240519, N'HOÀNG VĂN TRUNG', 493323, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240627, 70240627, N'TRẦN THỊ ÁI', 493324, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240627, 70240627, N'TRẦN THỊ ÁI', 493325, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240633, 70240633, N'NHÀ HÀNG TUẤN TÙNG III', 493326, N'VN12      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240671, 70240671, N'CÔNG TY TNHH BBQ VIỆT NAM', 493327, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240672, 70240672, N'CÔNG TY TNHH BBQ VIỆT NAM', 493328, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240673, 70240673, N'CÔNG TY TNHH THƯƠNG MẠI VÀ', 493329, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240673, 70240673, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DU LỊCH M&C VIỆT NAM', 493330, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240676, 70240676, N'CÔNG TY TNHH DỊCH VỤ ZINNIA', 493331, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240679, 70240679, N'CÔNG TY CỔ PHẦN TẬP ĐOÀN ZINNIA', 493332, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240681, 70240681, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493333, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240773, 70240773, N'CÔNG TY CỔ PHẦN KINH DOANH', 493334, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240773, 70240773, N'CÔNG TY CỔ PHẦN KINH DOANH THƯƠNG MẠI VÀ DỊCH VỤ CUỘC SỐNG', 493335, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240783, 70240783, N'CÔNG TY TNHH THỰC PHẨM NAM THẮNG', 493336, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240847, 70240847, N'CÔNG TY TNHH ĐẦU TƯ THƯƠNG MẠI', 493337, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240847, 70240847, N'CTY TNHH ĐẦU TƯ THƯƠNG MẠI VÀ DỊCH VỤ NHÀ HÀNG SONG ANH', 493338, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70240976, 70240976, N'CHI NHÁNH CÔNG TY CỔ PHẦN ĐẦU T', 493339, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70241037, 70241037, N'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ SEN NAM THANH', 493340, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70241037, 70241037, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH', 493341, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70241219, 70241219, N'NGUYỄN THỊ TUYẾT NHUNG', 493342, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70241221, 70241221, N'VŨ ĐÌNH TRÀO', 493343, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70241430, 70241430, N'CÔNG TY CỔ PHẦN DỊCH VỤ TỔNG H', 493344, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70241430, 70241430, N'CÔNG TY CỔ PHẦN DỊCH VỤ TỔNG HỢP HÙNG HÀ', 493345, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70241584, 70241584, N'NGUYỄN VĂN TUẤN', 493346, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70241584, 70241584, N'NGUYỄN VĂN TUẤN', 493347, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243207, 70243207, N'NGUYỄN THỊ NGOAN', 493348, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243207, 70243207, N'NGUYỄN THỊ NGOAN', 493349, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243210, 70243210, N'CÔNG TY ĐẦU TƯ XÂY DỰNG SỐ 2', 493350, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243215, 70243215, N'NGUYỄN THỊ HẢO', 493351, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243235, 70243235, N'CÔNG TY TNHH CHI A KI', 493352, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243238, 70243238, N'CÔNG TY TNHH THƯƠNG MẠI VÀ', 493353, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243238, 70243238, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ TỒNG HỢP LONG VIỆT', 493354, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243239, 70243239, N'CÔNG TY TNHH PHÁT TRIỂN VÀ', 493355, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243239, 70243239, N'CÔNG TY TNHH PHÁT TRIỂN VÀ DỊCH VỤ PHÚC THÀNH', 493356, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243895, 70243895, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ ĐẦU TƯ NEW POWER VIỆT NAM', 493357, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243905, 70243905, N'CÔNG TY TNHH KHÁCH SẠN NGỌC', 493358, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243905, 70243905, N'CÔNG TY TNHH KHÁCH SẠN NGỌC HANOI PEARI HOTEL', 493359, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243908, 70243908, N'CÔNG TY TNHH HỐNG NGỌC', 493360, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243908, 70243908, N'CÔNG TY TNHH HỒNG NGỌC', 493361, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243945, 70243945, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ XÂY', 493362, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243945, 70243945, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ XÂY DỰNG 3TC', 493363, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243947, 70243947, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG', 493364, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70243947, 70243947, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI HÀ NỘI XANH', 493365, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244135, 70244135, N'CÔNG TY TNHH SẢN XUẤT VÀ XUẤT', 493366, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244135, 70244135, N'CÔNG TY TNHH SẢN XUẤT VÀ XUẤT NHẬP KHẨU MỸ NGHỆ PHÚ XUYÊN', 493367, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244220, 70244220, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ', 493368, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244308, 70244308, N'CÔNG TY TNHH CÔNG NGHỆ', 493369, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244531, 70244531, NULL, 493370, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244803, 70244803, N'NGUYỄN THỊ UYÊN', 493371, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244804, 70244804, N'TRẦN KIM OANH', 493372, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244813, 70244813, N'HOÀNG TIẾN SƠN', 493373, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244817, 70244817, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI U.N.I', 493374, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244817, 70244817, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI U.N.I', 493375, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244820, 70244820, N'LÊ VĂN LONG', 493376, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70244820, 70244820, N'LÊ VĂN LONG', 493377, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245421, 70245421, N'CÔNG TY TNHH DỊCH VU EB', 493378, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245423, 70245423, N'CÔNG TY TNHH DỊCH VU EB', 493379, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245431, 70245431, N'TRƯƠNG DUY NHẤT', 493380, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245432, 70245432, N'CÔNG TY TNHH GIẢI TRÍ TÂM PHÚC', 493381, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245437, 70245437, N'CHI NHÁNH CÔNG TY TNHH MTV', 493382, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245437, 70245437, N'CN CÔNG TY TNHH MTV VẬN TẢI ĐƯỜNG SẮT HÀ NỘI', 493383, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245542, 70245542, N'CÔNG TY TNHH DỊCH VỤ VÀ PHÁT TRIỂN', 493384, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245544, 70245544, N'CÔNG TY TNHH GIẢI TRÍ TAK', 493385, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245546, 70245546, N'CANTEEN TRUNG TÂM HUẤN LUYỆN', 493386, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70245546, 70245546, N'CANTEEN TRUNG TÂM HUẤN LUYỆN VÀ BỒI DƯỠNG NGHIỆP VỤ BỘ CÔNG AN', 493387, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70254603, 70254603, N'VŨ THỊ NHÂM', 493388, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70254603, 70254603, N'VŨ THỊ NHÂM', 493389, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255721, 70255721, N'TRẠM DỪNG NGHỈ CAO TỐC CẦU', 493390, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255722, 70255722, NULL, 493391, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255722, 70255722, N'NHÀ ĂN BỆNH VIỆN HỮU NGHỊ ĐA KHOA', 493392, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255722, 70255722, N'NHÀ ĂN BỆNH VIỆN HỮU NGHỊ ĐA KHOA NGHỆ AN', 493393, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255737, 70255737, N'CÔNG TY TNHH ĐẦU TƯ NGUYỄN TIẾN', 493394, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255746, 70255746, N'CÔNG TY CỔ PHẦN THỜI TRANG', 493395, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255746, 70255746, N'CÔNG TY CỔ PHẦN THỜI TRANG TUẤN LOAN', 493396, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255776, 70255776, N'ĐỖ ĐÌNH BÌNH', 493397, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255776, 70255776, N'ĐỖ ĐÌNH BÌNH', 493398, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255777, 70255777, N'CÔNG TY TNHH ĐẠI TẦN', 493399, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70255777, 70255777, N'CÔNG TY TNHH ĐẠI TẦN', 493400, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70256564, 70256564, N'CÔNG TY CỔ PHẦN DỊCH VỤ CÀ PHÊ', 493401, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70256564, 70256564, N'CÔNG TY CỔ PHẦN DỊCH VỤ CÀ PHÊ', 493402, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70256592, 70256592, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI', 493403, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70256595, 70256595, N'CÔNG TY TNHH XUẤT NHẬP KHẨU', 493404, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70256597, 70256597, N'CÔNG TY TNHH FOSECA VIỆT NAM', 493405, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70257694, 70257694, N'CÔNG TY TNHH HÀ NỘI BỐN MÙA', 493406, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70257780, 70257780, N'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ -', 493407, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70257780, 70257780, N'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ DU LỊCH TRUNG HIẾU', 493408, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70257786, 70257786, N'CÔNG TY TNHH DK ENC VIỆT NAM', 493409, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70257794, 70257794, N'CÔNG TY CỔ PHẦN HÀNG', 493410, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258190, 70258190, N'CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN', 493411, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258190, 70258190, N'CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN VÀ DỊCH VỤ HÀ LINH', 493412, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258193, 70258193, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG', 493413, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258196, 70258196, N'CÔNG TY CỔ PHẦN KHÁCH SẠN VÀ', 493414, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258225, 70258225, N'KIM SAN', 493415, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258700, 70258700, N'CHI NHÁNH DOANH NGHIỆP TƯ NHÂN', 493416, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258701, 70258701, N'CÔNG TY TNHH ĐỨC ANH HÀ NỘI', 493417, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258703, 70258703, N'ĐỖ QUỐC HIỆP', 493418, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258717, 70258717, N'CÔNG TY CỔ PHẦN THỰC PHẨM VÀ', 493419, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258724, 70258724, N'CÔNG TY CỔ PHẦN KHÁCH SẠN LAM KINH', 493420, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258871, 70258871, N'CÔNG TY TNHH CÙNG MUA', 493421, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258871, 70258871, N'CÔNG TY TNHH CÙNG MUA CMART', 493422, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70258883, 70258883, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493423, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259112, 70259112, N'CÔNG TY CỔ PHẦN ĐẦU TƯ PHÁT TRIỂN', 493424, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259112, 70259112, N'CÔNG TY CỔ PHẦN ĐẦU TƯ PHÁT TRIỂN VÀ XÂY DỰNG TÂY ĐÔ', 493425, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259117, 70259117, N'NGUYỄN THỊ BÌNH', 493426, N'VN12      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259117, 70259117, N'NGUYỄN THỊ BÌNH', 493427, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259213, 70259213, NULL, 493428, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259213, 70259213, N'NGUYỄN ĐÌNH ANH', 493429, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259214, 70259214, N'LƯƠNG HỒNG PHONG', 493430, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259214, 70259214, N'LƯƠNG HỒNG PHONG', 493431, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259255, 70259255, N'VŨ THỊ HƯƠNG', 493432, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259255, 70259255, N'VŨ THỊ HƯƠNG', 493433, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259256, 70259256, N'HỘ KINH DOANH ĐỖ THỊ PHƯƠNG', 493434, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259256, 70259256, N'HỘ KINH DOANH ĐỖ THỊ PHƯƠNG', 493435, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259257, 70259257, N'CÔNG TY TNHH VẬT TƯ THIẾT BỊ', 493436, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259257, 70259257, N'CÔNG TY TNHH VẬT TƯ THIẾT BỊ TUẤN LONG', 493437, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259477, 70259477, N'CAO THỊ TỐ LOAN', 493438, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259602, 70259602, N'CÔNG TY TNHH NHÀ HÀNG NGON', 493439, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259604, 70259604, N'CÔNG TY TNHH MINH ĐỨC', 493440, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70259614, 70259614, N'HAPPY MART', 493441, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70260043, 70260043, N'CÔNG TY CỔ PHẦN SÀI GÒN - KIM LIÊN', 493442, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70260323, 70260323, N'CÔNG TY TNHH GOLDEN HORSE VIỆT NAM', 493443, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70260330, 70260330, N'LÊ THÀNH HUYÊN', 493444, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70260330, 70260330, N'LÊ THÀNH HUYÊN', 493445, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70260332, 70260332, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493446, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70260332, 70260332, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ DỊCH VỤ SE7VEN VIỆT NAM', 493447, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70260355, 70260355, N'CÔNG TY CỔ PHẦN HỮU NGHỊ', 493448, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70260362, 70260362, N'BÁNH MÌ NGỌC HIẾU', 493449, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70260393, 70260393, N'CÔNG TY TNHH BBQ VIỆT NAM', 493450, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261138, 70261138, N'CÔNG TY TNHH MỘT THÀNH VIÊN', 493451, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261138, 70261138, N'CÔNG TY TNHH MỘT THÀNH VIÊN TỔNG HỢP THƯƠNG MẠI MIPEC', 493452, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261144, 70261144, N'CÔNG TY TNHH KHÁCH SẠN GRACE', 493453, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261173, 70261173, N'PHẠM VĂN DŨNG', 493454, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261173, 70261173, N'PHẠM VĂN DŨNG', 493455, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261195, 70261195, N'ĐẠI LÝ HUY THIẾT', 493456, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261195, 70261195, N'ĐẠI LÝ HUY THIẾT', 493457, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261642, 70261642, NULL, 493458, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261642, 70261642, N'CÔNG TY TNHH THƯƠNG MẠI VÀ', 493459, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261642, 70261642, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ HẢI SỌT', 493460, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261688, 70261688, N'CÔNG TY CỔ PHẦN PHÚ GIA', 493461, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261689, 70261689, N'HOÀNG CHÍ CÓONG', 493462, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261694, 70261694, N'GÀ NGON 63', 493463, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261702, 70261702, N'CÔNG TY TNHH DỊCH VỤ VÀ THƯƠNG', 493464, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70261702, 70261702, N'CÔNG TY TNHH DỊCH VỤ VÀ THƯƠNG MẠI PHƯƠNG TIẾN ĐẠT', 493465, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262247, 70262247, N'MAI THỊ BÌNH ĐỊNH', 493466, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262249, 70262249, N'CÔNG TY TNHH AEON VIỆT NAM -', 493467, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262253, 70262253, N'CHI NHÁNH HẢI PHÒNG - CÔNG TY', 493468, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262253, 70262253, N'CHI NHÁNH HẢI PHÒNG - CÔNG TY CỔ PHẦN SIÊU THỊ VINMART', 493469, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262280, 70262280, N'PHẠM THỊ PHƯƠNG THU', 493470, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262282, 70262282, NULL, 493471, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262282, 70262282, N'NGUYỄN THỊ CHÂU', 493472, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262283, 70262283, N'TRẦN THANH TÙNG', 493473, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262284, 70262284, NULL, 493474, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262284, 70262284, N'VƯƠNG ĐÌNH THẠCH', 493475, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262467, 70262467, NULL, 493476, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262591, 70262591, N'CÔNG TY TNHH XNK THƯƠNG MẠI HOÀNG THANH', 493477, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262591, 70262591, N'CÔNG TY TNHH XUẤT NHẬP KHẨU', 493478, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262599, 70262599, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493479, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262599, 70262599, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI ECO VIỆT NAM', 493480, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262854, 70262854, N'CÔNG TY CỔ PHẦN XUẤT NHẬP KHẨU', 493481, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262854, 70262854, N'CÔNG TY CỔ PHẦN XUẤT NHẬP KHẨU THẾ GIỚI HẢI SẢN', 493482, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262877, 70262877, N'CÔNG TY TNHH MÊ ĐI CA', 493483, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70262898, 70262898, N'CÔNG TY TNHH THỂ DỤC THẨM MỸ', 493484, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263008, 70263008, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ PHÁT', 493485, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263010, 70263010, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493486, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263011, 70263011, N'CÔNG TY TNHH BUY ALL FOOD VIỆT NAM', 493487, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263012, 70263012, N'CÔNG TY TNHH AJISAI VIỆT NAM', 493488, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263020, 70263020, NULL, 493489, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263020, 70263020, N'LỮ THỊ HÀ', 493490, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263044, 70263044, N'CÔNG TY TNHH MTV SORACHI VIỆT NAM', 493491, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263467, 70263467, N'CÔNG TY TNHH NHÀ HÀNG JW HOMEMADE', 493492, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263476, 70263476, N'CÔNG TY TNHH ĐẦU TƯ VÀ DỊCH VỤ', 493493, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263476, 70263476, N'CÔNG TY TNHH ĐẦU TƯ VÀ DỊCH VỤ NHÀ HÀNG KHÁCH SẠN', 493494, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263477, 70263477, N'CÔNG TY TNHH SU CHEP BBQ', 493495, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263492, 70263492, N'CÔNG TY TNHH GIẢI TRÍ VÀ QUẢNG CÁO', 493496, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263652, 70263652, N'NGUYỄN VĂN THUẦN', 493497, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263748, 70263748, N'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ', 493498, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263865, 70263865, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ', 493499, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263865, 70263865, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ DỊCH VỤ MĂM MĂM', 493500, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263885, 70263885, N'CÔNG TY TNHH AEON VIỆT NAM -', 493501, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263887, 70263887, N'CÔNG TY CỔ PHẦN DỊCH VỤ QUẢN LÝ', 493502, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263889, 70263889, N'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ', 493503, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (70263895, 70263895, N'CÔNG TY CỔ PHẦN VINA SEN', 493504, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000015, 80000015, N'CÔNG TY TNHH THƯƠNG MẠI', 493505, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000170, 80000170, N'CÔNG TY CỔ PHẦN C-ONE', 493506, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000171, 80000171, N'CÔNG TY TNHH DỊCH VỤ HẢI SẢN HẢI ĐĂNG', 493507, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000171, 80000171, N'CÔNG TY TNHH DỊCH VỤ THỦY SẢN', 493508, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000179, 80000179, N'CÔNG TY TNHH DỊCH VỤ', 493509, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000179, 80000179, N'CÔNG TY TNHH DỊCH VỤ VÀ THƯƠNG MẠI MESA', 493510, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000187, 80000187, N'CÔNG TY TNHH RỸ HIỀN', 493511, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000187, 80000187, N'CÔNG TY TNHH RỸ HIỀN', 493512, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000192, 80000192, N'CHI NHÁNH CÔNG TY TNHH', 493513, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000192, 80000192, N'CONG TY TNHH TRUYEN THONG BACH KIM M.V.P ( Royal City)', 493514, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000225, 80000225, NULL, 493515, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000225, 80000225, N'CN KHÁCH SẠN MƯỜNG THANH SÔNG', 493516, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000229, 80000229, N'ĐẶNG NGỌC HIẾU', 493517, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000494, 80000494, N'TRỊNH NGỌC QUỐC', 493518, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000494, 80000494, N'TRỊNH NGỌC QUỐC', 493519, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000537, 80000537, N'HỘ KINH DOANH CÁ THỂ BÍCH THỦY', 493520, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000543, 80000543, N'VŨ THỊ THU', 493521, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000544, 80000544, N'NGHIÊM THỊ MỸ LỆ', 493522, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80000544, 80000544, N'NGHIÊM THỊ MỸ LỆ', 493523, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80029324, 80029324, NULL, 493524, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80029324, 80029324, N'CHI NHÁNH CÔNG TY TNHH METRO', 493525, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (80029324, 80029324, N'Công Ty TNHH Metro Cash & Carry VN  ', 493526, N'VN16      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100000, 82100000, N'CÔNG TY TNHH SING RESTAURANT', 493527, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100001, 82100001, N'CÔNG TY TNHH ĐỒNG HỒ CÁT', 493528, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100002, 82100002, N'DOANH NGHIỆP TƯ NHÂN TÚ TÀI', 493529, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100002, 82100002, N'DOANH NGHIỆP TƯ NHÂN TÚ TÀI', 493530, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100049, 82100049, N'CÔNG TY TNHH HÙNG VINH', 493531, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100051, 82100051, N'CHU THỊ LOAN', 493532, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100085, 82100085, N'MDC QUANG BÍCH', 493533, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100085, 82100085, N'MDC Quang Bích  ', 493534, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100103, 82100103, N'MDC TĨNH VUI', 493535, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100103, 82100103, N'MDC TĨNH VUI  ', 493536, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100104, 82100104, N'CÔNG TY TNHH CJ CGV VIỆT NAM', 493537, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100110, 82100110, N'CÔNG TY TNHH HÀ NÔỊ- BẮC SÔNG HỒNG  ', 493538, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100114, 82100114, N'DƯƠNG THỊ LAN', 493539, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100132, 82100132, N'CÔNG TY CỔ PHẦN TIỆN LỢI', 493540, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100145, 82100145, N'ĐOÀN THỊ HÀ', 493541, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100156, 82100156, N'DOANH NGHIỆP TƯ NHÂN CHÍNH GẤM', 493542, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100156, 82100156, N'DNTN CHÍNH GẤM  ', 493543, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100192, 82100192, N'PHẠM ĐỨC VUI', 493544, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100198, 82100198, N'CÔNG TY CỔ PHẦN ĐẦU TƯ', 493545, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100198, 82100198, N'CÔNG TY CỔ PHẦN ĐẦU TƯVÀ DU LỊCH THIÊN SƠN', 493546, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100211, 82100211, N'NGUYỄN SỸ ĐẠ', 493547, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100220, 82100220, N'CÔNG TY PHÁT TRIỂN DU LỊCH HỮU HẠN', 493548, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100220, 82100220, N'CÔNG TY PHÁT TRIỂN DU LỊCH HỮU HẠN  LÀNG NGHI TÀM ', 493549, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100229, 82100229, N'ĐỖ CƯỜNG DOANH', 493550, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100290, 82100290, N'ĐẶNG THỊ XÂY', 493551, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100318, 82100318, N'CT TNHH TMDV&DL HOÀNG QUÝ  ', 493552, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100324, 82100324, N'CÔNG TY TNHH LONG MINH', 493553, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100324, 82100324, N'CTY TNHH LONG MINH  ', 493554, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100352, 82100352, N'CONG TY TNHH KOTO  ', 493555, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100352, 82100352, N'CÔNG TY TNHH KOTO', 493556, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100357, 82100357, NULL, 493557, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100357, 82100357, N'NGUYỄN HUY QUẾ', 493558, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100359, 82100359, N'CÔNG TY CỔ PHẦN HUYỀN THOẠI BIA', 493559, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100359, 82100359, N'CTYCP Huyền Thoại Bia  ', 493560, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100362, 82100362, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493561, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100365, 82100365, N'HANH DỰ', 493562, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100375, 82100375, N'CÔNG TY TNHH XUẤT NHẬP KHẨU', 493563, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100375, 82100375, N'CTY TNHH XNK PHÚ VIỆT HƯNG  ', 493564, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100376, 82100376, N'THẾ TRƯỜNG', 493565, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100376, 82100376, N'Thế Trường  ', 493566, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100385, 82100385, N'Công ty CP TMDV Sông Hồng  ', 493567, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100389, 82100389, N'TRẦN QUANG VINH', 493568, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100389, 82100389, N'TRẦN QUANG VINH  ', 493569, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100435, 82100435, N'NGUYỄN XUÂN NAM', 493570, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100439, 82100439, N'CHI NHÁNH CÔNG TY CỔ PHẦN', 493571, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100439, 82100439, N'CHI NHÁNH CTY CP THƯƠNG MẠI BÀI THƠ TẠI HÀ NỘI', 493572, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100461, 82100461, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ DỊCH VỤ', 493573, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100461, 82100461, N'CÔNG TY P ĐẦU TƯ VÀ DỊCH VỤ  THƯƠNG MẠI BENS', 493574, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100478, 82100478, N'NHA HANG LAU THAI MQ  ', 493575, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100479, 82100479, N'DOANH NGHIỆP TƯ NHÂN LAY BẠC', 493576, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100482, 82100482, N'CTY TNHH MTV ĐIỆN ẢNH HÀ NỘI  ', 493577, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100515, 82100515, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH', 493578, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100515, 82100515, N'CTY TNHH THƯƠNG MẠI VÀ DỊCHPINK MELON HÀ BẮC', 493579, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100555, 82100555, NULL, 493580, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100555, 82100555, N'CAO KHẮC XUÂN', 493581, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100644, 82100644, N'ĐÀO THỊ NGUYỆT', 493582, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100688, 82100688, N'DOAN TRUNG DUC', 493583, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100688, 82100688, N'DOAN TRUNG DUC  ', 493584, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100778, 82100778, N'CTY TNHH TM VÀ DV TIỆN ÍCH', 493585, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100865, 82100865, NULL, 493586, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100865, 82100865, N'LÊ VĂN HÒA  ', 493587, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100868, 82100868, N'CHI NHÁNH CÔNG TY CỔ PHẦN THÀNH ĐÔ', 493588, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100868, 82100868, N'CHI NHÁNH CÔNG TY CỔ PHẦN THÀNH ĐÔ TẠI HÀ NỘI ', 493589, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100871, 82100871, N'NGUYỄN TIẾN NHƯ', 493590, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100872, 82100872, N'CÔNG TY TNHH MỘT THÀNH VIÊN', 493591, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100938, 82100938, N'CTY TNHH THƯƠNG MẠI VÀ DỊCH VỤ', 493592, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100938, 82100938, N'CTY TNHH THƯƠNG MẠI VÀ DỊCH VỤ  GIA THỊNH', 493593, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100941, 82100941, N'THẢO UY', 493594, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100944, 82100944, N'ĐẠI HIẾN', 493595, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100944, 82100944, N'ĐẠI HIẾN  ', 493596, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100947, 82100947, N'CTY CP ALFRESCOS Á CHÂU', 493597, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100979, 82100979, N'CTY TNHH NGỌC SƯƠNG HÀ NỘI  ', 493598, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100985, 82100985, N'BÙI THỊ NỤ', 493599, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100985, 82100985, N'Bùi Thị Nụ  ', 493600, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100991, 82100991, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ THƯƠN', 493601, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100991, 82100991, N'CTY CP DT&TM Ngọc Thanh  ', 493602, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100994, 82100994, N'CĂNG TIN HỌC VIỆN AN NINH NHÂN DÂN  ', 493603, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82100997, 82100997, N'CÔNG TY CỔ PHẦN T-MARTSTORES  ', 493604, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101026, 82101026, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI CẦU GIẤY', 493605, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101057, 82101057, N'QUÁN ĂN NGON', 493606, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101058, 82101058, N'CTY CP DT TM&DV BẠN ĐỒNG HÀNH', 493607, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101061, 82101061, N'CHI NHÁNH CÔNG TY TNHH THƯƠNG', 493608, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101061, 82101061, N'CNHÁNH CTY TNHH TMẠI TRẦN HỒNG QUÂN-TÒA THÁP CROWNE PLAZA', 493609, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101063, 82101063, N'NGUYỄN THỊ HUỆ', 493610, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101121, 82101121, N'CAN TIN TRUONG  PTTH TRAN QUOC TUAN', 493611, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101121, 82101121, N'CANTEEN TRUONG PTTH TRAN QUOC TUAN  ', 493612, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101144, 82101144, N'CÔNG TY CỔ PHẦN PHẠM DIỆP', 493613, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101165, 82101165, N'CTY CỔ PHẦN ĂN UỐNG KHÁCH SẠN HÀ', 493614, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101165, 82101165, N'CTY CỔ PHẦN ĂN UỐNG KHÁCH SẠN HÀ TÂY ', 493615, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101198, 82101198, N'Căng tin Bảo Tàng Hồ Chí Minh  ', 493616, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101199, 82101199, N'CANTEEN ĐẠI HỌC NGOẠI THƯƠNG Q & Q', 493617, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101208, 82101208, N'CTY CP KD Tổng hợp Sơn Tây  ', 493618, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101242, 82101242, N'CTY CP KD VÀ XD HÀ NỘI', 493619, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101268, 82101268, N'Công Ty TNHH Khách Sạn Grand Imperial Hà Nội', 493620, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101268, 82101268, N'CT TNHH KHÁCH SẠN GRAND PLAZA', 493621, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101269, 82101269, N'CTY CP GIẢI TRÍ BHD-MVP', 493622, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101270, 82101270, N'TẠ HỮU MAY', 493623, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101270, 82101270, N'TẠ HỮU MAY', 493624, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101279, 82101279, N'NGUYỄN THỊ NHÀN', 493625, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101279, 82101279, N'NGUYỄN THỊ NHÀN  ', 493626, N'VN16      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101280, 82101280, NULL, 493627, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101280, 82101280, N'CÔNG TY TNHH DỊCH VỤ EB', 493628, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101288, 82101288, N'CTY TNHH THƯƠNG MẠI PHƯƠNG HẢI ANH', 493629, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101288, 82101288, N'CTY TNHH THƯƠNG MẠI PHƯƠNG HẢI ANH', 493630, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101293, 82101293, N'DNTN NGUYỄN NGỌC BỌP', 493631, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101293, 82101293, N'DNTN Nguyễn Ngọc Bọp  ', 493632, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101314, 82101314, N'ĐÀO THỊ TÍN', 493633, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101405, 82101405, N'CTY TNHH HD TEC', 493634, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101410, 82101410, N'CÔNG TY TNHH DỊCH VỤ EB', 493635, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101410, 82101410, N'CÔNG TY TNHH DỊCH VỤ EB', 493636, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101411, 82101411, N'CÔNG TY TNHH DỊCH VỤ EB', 493637, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101434, 82101434, N'CONG TY TNHH DUNG HOA  ', 493638, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101434, 82101434, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493639, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101437, 82101437, N'CHI NHÁNH DOANH NGHIỆP TƯ NHÂN', 493640, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101455, 82101455, N'CN TỔNG CÔNG TY MAY 10-CTY CP SIÊU', 493641, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101455, 82101455, N'CN TỔNG CÔNG TY MAY 10-CTY CP SIÊU THỊ M10 MART ', 493642, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101491, 82101491, N'CÔNG TY CỔ PHẦN ẨM THỰC', 493643, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101491, 82101491, N'CTY TNHH NHÀ NƯỚC MTV THỰC PHẨM HN  ', 493644, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101492, 82101492, N'CÔNG TY TNHH THƯƠNG MẠI VÀ XÂY', 493645, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101492, 82101492, N'CTY TNHH TM&XD VIỆT NGA  ', 493646, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101495, 82101495, N'CTY CP SẢN XUẤT VÀ TM AN VIỆT', 493647, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101519, 82101519, N'CÔNG TY CỔ PHẦN KHÁCH SẠN HẢI ÂU', 493648, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101537, 82101537, N'CONG TY TNHH THUNG LŨNG VUA  ', 493649, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101537, 82101537, N'CÔNG TY TNHH THUNG LŨNG VUA', 493650, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101548, 82101548, N'NGUYỄN THỊ HỢP', 493651, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101549, 82101549, N'CTY TNHH ĐẠI HƯNG LÀO CAI', 493652, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101567, 82101567, N'TRẦN THỊ THANH HẢI', 493653, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101567, 82101567, N'Trần Thị Thanh Hải  ', 493654, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101577, 82101577, N'BÌNH AN', 493655, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101585, 82101585, N'CÔNG TY CỔ PHẦN DU LỊCH VÀ', 493656, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101586, 82101586, N'CÔNG TY CP TM VA DV KOANG HUY', 493657, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101587, 82101587, N'NGUYEN VIET CUONG', 493658, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101587, 82101587, N'NGUYEN VIET CUONG  ', 493659, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101588, 82101588, N'PHAM VAN DUONG', 493660, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101588, 82101588, N'PHAM VAN DUONG  ', 493661, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101592, 82101592, N'BUI THI LY', 493662, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101592, 82101592, N'BUI THI LY  ', 493663, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101593, 82101593, N'CUONG THINH DEVELOPMENT CO., LTD  ', 493664, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101604, 82101604, N'CÔNG TY TNHH LY HOA  ', 493665, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101604, 82101604, N'CÔNG TY TNHH NGUYỄN LY HOA', 493666, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101614, 82101614, NULL, 493667, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101614, 82101614, N'CONG TY TNHH KHANH HOANG', 493668, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101615, 82101615, NULL, 493669, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101652, 82101652, N'CÔNG TY TNHH THƯƠNG MẠI VÀ', 493670, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101652, 82101652, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ DOVADO VIỆT NAM', 493671, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101654, 82101654, N'CÔNG TY CP THỂ THAO PHƯƠNG ĐÔNG', 493672, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101656, 82101656, N'VŨ VĂN TUYÊN', 493673, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101656, 82101656, N'VŨ VĂN TUYÊN  ', 493674, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101658, 82101658, N'NGUYỄN VĂN XIÊM', 493675, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101659, 82101659, N'CÔNG TY CỔ PHẦN DU LỊCH', 493676, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101659, 82101659, N'CÔNG TY CỔ PHẦN DU LỊCH NIỂM TỰ HÀO VIỆT', 493677, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101663, 82101663, N'ĐỖ VĂN ĐÀO', 493678, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101665, 82101665, N'CÔNG TY TNHH SX-TM-DU LỊCH ĐÀI NAM', 493679, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101669, 82101669, N'TĂNG THỊ OANH', 493680, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101669, 82101669, N'TĂNG THỊ OANH  ', 493681, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101671, 82101671, N'CÔNG TY CỔ PHẦN ĐÔNG ĐÔ', 493682, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101672, 82101672, N'CÔNG TY CP THỂ THAO VÀ GIẢI TRÍ', 493683, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101672, 82101672, N'CÔNG TY CP THỂ THAO VÀ GIẢI TRÍ BẰNG LINH ', 493684, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101673, 82101673, N'CÔNG TY CỔ PHẦN MAY CHIẾN THẮNG  ', 493685, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101674, 82101674, N'CTY CP KINH DOANH THƯƠNG MẠI', 493686, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101674, 82101674, N'CTY CP KINH DOANH THƯƠNG MẠI THÀNH PHÁT ', 493687, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101677, 82101677, N'CÔNG TY CỔ PHẦN SUẤT ĂN CÔNGNGHIỆP ATESCO', 493688, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101685, 82101685, N'NGUYỄN THỊ HẰNG', 493689, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101692, 82101692, N'VŨ THỊ PHƯỢNG', 493690, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101695, 82101695, N'PHẠM VĂN TRƯỜNG', 493691, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101698, 82101698, N'PHẠM NGỌC HÙNG', 493692, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101699, 82101699, N'PHẠM HỒNG SƠN', 493693, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101701, 82101701, N'NGÔ NGỌC TOẢN', 493694, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101701, 82101701, N'NGÔ NGỌC TOẢN  ', 493695, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101709, 82101709, N'CÔNG TY TNHH GLOBAL TOSERCO  ', 493696, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101709, 82101709, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493697, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101768, 82101768, N'CẢNG HÀNG KHÔNG QUỐC TẾ NỘI BÀI-CHI NHÁNH TỔNG CTY CẢNG HÀNG KHÔNG VN', 493698, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101810, 82101810, N'NGUYỄN THỊ THỊNH', 493699, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101834, 82101834, N'CÔNG TY CỔ PHẦN DỊCH VỤ VÀ PHÂN', 493700, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101834, 82101834, N'CÔNG TY CỔ PHẦN DỊCH VỤ VÀ PHÂN PHỐI NAM THÁI BÌNH DƯƠNG ', 493701, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101841, 82101841, N'CÔNG TY CỔ PHẦN ĐẦU TƯ', 493702, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101841, 82101841, N'CÔNG TY TNHH QUỐC TẾ ĐÔNG PHƯƠNG  ', 493703, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101846, 82101846, N'CÔNG TY MẠNH ĐỨC TNHH', 493704, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101876, 82101876, N'NGUYỄN ĐÌNH QUANG', 493705, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101876, 82101876, N'NGUYỄN ĐÌNH QUANG  ', 493706, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101895, 82101895, N'CÔNG TY TNHH DỊCH VỤ EB', 493707, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101898, 82101898, N'CÔNG TY CỔ PHẦN DỊCH VỤ VĂN', 493708, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101898, 82101898, N'CÔNG TY CỔ PHẦN DỊCH VỤ VĂN HÓA TRUYỂN THÔNG', 493709, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101930, 82101930, N'CTY CP SỰ KIỆN VÀ ẨM THỰC HAPRO  ', 493710, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101945, 82101945, N'CÔNG TY TNHH DU LỊCH VÀ DỊCH  VỤ HẠ LONG ', 493711, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101945, 82101945, N'CÔNG TY TRÁCH NHIỆM HỮU HẠN', 493712, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101948, 82101948, N'CÔNG TY TNHH ẨM THỰC VÀ', 493713, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101948, 82101948, N'CÔNG TY TNHH ẨM THỰC VÀ GIẢI TRÍ X-MEN', 493714, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101951, 82101951, N'CÔNG TY TNHH DỊCH VỤ EB', 493715, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101951, 82101951, N'CÔNG TY TNHH DỊCH VỤ EB', 493716, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101956, 82101956, NULL, 493717, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101956, 82101956, N'ĐÀO THỊ MAI', 493718, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101958, 82101958, N'ĐỖ QUANG HÙNG', 493719, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101962, 82101962, NULL, 493720, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101962, 82101962, N'VÕ THỊ LINH  ', 493721, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101965, 82101965, N'CÔNG TY CỔ PHẦN THẾ GIỚI GIẢI TRÍ  ', 493722, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101968, 82101968, N'CHI NHÁNH CÔNG TY TNHH PIZZA', 493723, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101968, 82101968, N'Chi Nhánh công ty TNHH  Pizza Việt Nam tại Hà Nội', 493724, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101971, 82101971, N'CÔNG TY TNHH TRUYỀN THÔNG', 493725, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101971, 82101971, N'CÔNG TY TNHH TRUYỀN THÔNG VPN HÀ NỘI ', 493726, N'VN12      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101978, 82101978, N'HỘ KINH DOANH CÁ THỂ HẢI YẾN  ', 493727, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101986, 82101986, N'CÔNG TY TNHH T&Q  ', 493728, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101993, 82101993, N'NHÀ HÀNG CHẢ CÁ HẢI XỒM  ', 493729, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101994, 82101994, NULL, 493730, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82101994, 82101994, N'PHAN HỮU TUẤT  ', 493731, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102001, 82102001, N'CÔNG TY TNHH XUẤT NHẬP KHẨU', 493732, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102004, 82102004, N'HỒ NGỌC SANG', 493733, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102005, 82102005, N'CÔNG TY TNHH THƯƠNG MẠI ĐÔNG DŨNG', 493734, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102019, 82102019, N'NGUYỄN THỊ HÒA', 493735, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102019, 82102019, N'NGUYỄN THỊ HÒA  ', 493736, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102025, 82102025, N'CÔNG TY CỔ PHẦN MICOM', 493737, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102025, 82102025, N'CÔNG TY CỔ PHẦN MICOM  ', 493738, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102033, 82102033, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ', 493739, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102033, 82102033, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ', 493740, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102033, 82102033, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ PHÚ GIA ', 493741, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102039, 82102039, N'CÔNG TY TNHH  NGUYỄN KHẮC  ', 493742, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102039, 82102039, N'CÔNG TY TNHH THƯƠNG MẠI', 493743, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102041, 82102041, N'PHẠM NGỌC THI  ', 493744, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102043, 82102043, N'NGUYỄN ĐĂNG VẠN', 493745, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102044, 82102044, N'CÔNG TY TNHH TRUYỀN THÔNG', 493746, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102044, 82102044, N'CONG TY TNHH TRUYEN THONG BACH KIM M.V.P ( Long Bien)', 493747, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102054, 82102054, N'VƯƠNG QUỐC DIỆN', 493748, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102054, 82102054, N'VƯƠNG QUỐC DIỆN  ', 493749, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102056, 82102056, N'HOÀNG THỊ THE', 493750, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102057, 82102057, N'LÊ THỊ LOAN', 493751, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102057, 82102057, N'LÊ THỊ LOAN  ', 493752, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102077, 82102077, N'CÔNG TY TNHH DỊCH VỤ VÀ THƯƠNG MẠI', 493753, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102077, 82102077, N'CÔNG TY TNHH DỊCH VỤ VÀ THƯƠNG MẠI  LÂM VIÊN ', 493754, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102087, 82102087, N'TRẦN NGỌC ĐỘNG', 493755, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102087, 82102087, N'TRẦN NGỌC ĐỘNG  ', 493756, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102088, 82102088, N'NGÔ QUÝ SỬU  ', 493757, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102089, 82102089, N'ĐINH THỊ AN', 493758, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102093, 82102093, N'CÔNG TY TNHH XUÂN QUẾ  ', 493759, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102100, 82102100, N'TRẦN VĂN TÁM', 493760, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102125, 82102125, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH', 493761, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102125, 82102125, N'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ TỔNG HỢP THÙY DƯƠNG', 493762, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102128, 82102128, N'NGUYỄN VĂN CHIẾN', 493763, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102128, 82102128, N'NGUYỄN VĂN CHIẾN', 493764, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102130, 82102130, N'PHẠM TIẾN VÕ', 493765, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102130, 82102130, N'PHẠM TIẾN VÕ', 493766, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102131, 82102131, N'Quán Nem', 493767, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102132, 82102132, N'QUÁN NEM', 493768, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102134, 82102134, N'LƯƠNG XUÂN DUYÊN', 493769, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102134, 82102134, N'LƯƠNG XUÂN DUYÊN', 493770, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102138, 82102138, N'CÔNG TY CỔ PHẦN HIWAY VIỆT NAM', 493771, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102161, 82102161, N'NGUYỄN THỊ HUYỀN TRANG', 493772, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102170, 82102170, N'CÔNG TY CỔ PHẦN 3T MART  VIỆT NAM', 493773, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102170, 82102170, N'CÔNG TY CỔ PHẦN 3T.MART  VIỆT NAM', 493774, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102188, 82102188, NULL, 493775, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102188, 82102188, N'LÊ THỊ HƯỜNG', 493776, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102193, 82102193, N'CÔNG TY TNHH MỘT THÀNH VIÊN', 493777, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102193, 82102193, N'CÔNG TY TNHH MỘT THÀNH VIÊN LAN CHI BUSINESS', 493778, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102194, 82102194, N'DOANH NGHIỆP TN THƯƠNG MẠI', 493779, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102194, 82102194, N'DOANH NGHIỆP TN THƯƠNG MẠI VŨ NGỌC LOAN', 493780, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102205, 82102205, NULL, 493781, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102205, 82102205, N'PHẠM VĂN VINH', 493782, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102212, 82102212, N'CÔNG TY TNHH BẢO KHÁNH', 493783, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102212, 82102212, N'CÔNG TY TNHH BẢO KHÁNH', 493784, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102213, 82102213, N'NGUYỄN THỊ HỒNG', 493785, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102213, 82102213, N'NGUYỄN THỊ HỒNG', 493786, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102217, 82102217, N'NGUYỄN VĂN LINH', 493787, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102230, 82102230, N'CÔNG TY TNHH  FOSECA VIỆT NAM', 493788, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102242, 82102242, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI', 493789, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102242, 82102242, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI VÀ DỊCH VỤ BÌNH MINH VIỆT', 493790, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102248, 82102248, N'CÔNG TY TNHH THƯƠNG MẠI', 493791, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102248, 82102248, N'CÔNG TY TNHH THƯƠNG MẠI K & K  TOÀN CẦU', 493792, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102251, 82102251, N'CÔNG TY TNHH THƯƠNG MẠI TÂY BẮC', 493793, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102254, 82102254, N'CÔNG TY TNHH DỊCH VỤ EB', 493794, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102261, 82102261, N'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ', 493795, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102262, 82102262, N'CÔNG TY TNHH L''S PLACE', 493796, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102265, 82102265, N'LÊ VĂN TUYẾN', 493797, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102266, 82102266, N'NGUYỄN THỊ HẠP', 493798, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102266, 82102266, N'NGUYỄN THỊ HẠP', 493799, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102268, 82102268, N'CHI NHÁNH CÔNG TY CỔ PHẦN DỊCH VỤ', 493800, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102268, 82102268, N'CHI NHÁNH CÔNG TY CỔ PHẦN DỊCH VỤ CÀ PHÊ CAO NGUYÊN', 493801, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102277, 82102277, NULL, 493802, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102277, 82102277, N'CHU VĂN TUẤN', 493803, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102279, 82102279, N'CÔNG TY TNHH BO TA NI CA', 493804, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102283, 82102283, N'PHẠM THỊ THỦY', 493805, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102283, 82102283, N'PHẠM THỊ THỦY', 493806, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102288, 82102288, N'NGUYỄN ĐÌNH BÌNH', 493807, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102292, 82102292, NULL, 493808, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102292, 82102292, N'NGÔ THỊ NGUYỆT', 493809, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102300, 82102300, N'NGUYỄN ĐỨC NGHỊ', 493810, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102307, 82102307, N'CHI NHÁNH CÔNG TY TNHH DỊCH VỤ', 493811, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102307, 82102307, N'CNHÁNH CTY TNHH DỊCH VỤ  THỰC PHẨM VÀ GIẢI KHÁT CÁNH   DIỀU XANH', 493812, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102309, 82102309, N'LÊ THỊ HIỀN', 493813, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102310, 82102310, N'NGUYỄN THỊ THỦY', 493814, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102310, 82102310, N'NGUYỄN THỊ THỦY', 493815, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102319, 82102319, NULL, 493816, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102328, 82102328, N'CHI NHÁNH CÔNG TY CỔ PHẦN SẢN', 493817, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102329, 82102329, N'CÔNG TY TNHH PHÚ HƯNG THỊNH', 493818, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102329, 82102329, N'CÔNG TY TNHH PHÚC HƯNG THỊNH', 493819, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102338, 82102338, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI', 493820, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102338, 82102338, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI THÀNH PHỐ HỒ CHÍ MINH', 493821, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102339, 82102339, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI', 493822, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102339, 82102339, N'LIÊN HIỆP HỢP TÁC XÃ THƯƠNG MẠI THÀNH PHỐ HỒ CHÍ MINH', 493823, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102343, 82102343, N'CÔNG TY TNHH DỊCH VỤ INTOGRANT VINA', 493824, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102344, 82102344, N'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ', 493825, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102346, 82102346, N'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ PHÁT TRIỂN H&T', 493826, N'VN12      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102346, 82102346, N'CÔNG TY TNHH ĐẦU TƯ VÀ', 493827, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102347, 82102347, N'CÔNG TY TNHH THƯƠNG MẠI', 493828, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102347, 82102347, N'CÔNG TY TNHH THƯƠNG MẠI BIWON VIỆT NAM', 493829, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102353, 82102353, N'VIÊN ĐÌNH TRÀ', 493830, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102353, 82102353, N'VIÊN ĐÌNH TRÀ', 493831, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102364, 82102364, N'CHI NHÁNH HÀ NỘI-CÔNG TY CỔ', 493832, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102364, 82102364, N'CHI NHÁNH HÀ NỘI-CÔNG TY CỔPHẦN SIÊU THỊ VINMART', 493833, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102378, 82102378, N'CHI NHÁNH CÔNG TY TNHH MỘT THÀNH', 493834, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102378, 82102378, N'CN CTY TNHH MTV ĐA NIỀM TIN-NHÀ HÀNG CAO CẤP THÀNH PHỐ SƯ TỬ', 493835, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102381, 82102381, N'LÊ NGỌC ANH', 493836, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102386, 82102386, N'CÔNG TY CỔ PHẦN ĐẦU TƯ', 493837, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102386, 82102386, N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI VÀ XÂY LẮP', 493838, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102388, 82102388, N'PHẠM THỊ THO', 493839, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102388, 82102388, N'PHẠM THỊ THO', 493840, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102389, 82102389, N'Công Ty TNHH Nhà Hàng Gói Và Cuốn Tại Tràng Tiền', 493841, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102391, 82102391, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493842, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102391, 82102391, N'CÔNG TY CỔ PHẦN THƯƠNG MẠIDỊCH VỤ CỔNG VÀNG', 493843, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102392, 82102392, N'KIÊN PHƯỢNG', 493844, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102392, 82102392, N'KIÊN PHƯỢNG', 493845, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102394, 82102394, N'NGUYỄN VĂN HAI', 493846, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102407, 82102407, N'NGUYỄN THỊ THU', 493847, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102408, 82102408, N'CÔNG TY TNHH NHÀ HÀNG JW', 493848, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102410, 82102410, N'CÔNG TY TNHH DU LỊCH VÀ', 493849, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102410, 82102410, N'CÔNG TY TNHH DU LỊCH VÀ THƯƠNG MẠI HOÀN KIẾM', 493850, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102413, 82102413, N'CÔNG TY TNHH THƯƠNG MẠI HUY HÙNG', 493851, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102413, 82102413, NULL, 493852, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102422, 82102422, N'NGUYỄN THỊ THANH', 493853, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102424, 82102424, N'NGUYỄN THỊ THU TRANG', 493854, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102426, 82102426, N'CÔNG TY TNHH SAO MAI  - THANH HÓA', 493855, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102428, 82102428, N'CÔNG TY TNHH MAY EMERALD', 493856, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102431, 82102431, N'DOANH NGHIỆP TƯ NHÂN XUÂN TRƯỜNG', 493857, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102435, 82102435, N'CÔNG TY TNHH DỊCH VỤ EB', 493858, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102436, 82102436, N'CÔNG TY TNHH DỊCH VỤ EB', 493859, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102436, 82102436, N'CÔNG TY TNHH DỊCH VỤ EB', 493860, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102461, 82102461, N'CÔNG TY TNHH DỊCH VỤ EB', 493861, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102462, 82102462, N'CÔNG TY TNHH DỊCH VỤ EB', 493862, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102463, 82102463, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ', 493863, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102463, 82102463, N'CÔNG TY CP THƯƠNG MẠI VÀ DỊCH VỤ LÃ VỌNG', 493864, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102469, 82102469, N'ĐẠI LÝ ĐANG CHIÊN', 493865, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102469, 82102469, N'SIÊU THỊ ĐANG CHIÊN', 493866, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102480, 82102480, N'NGUYỄN THU HÀ', 493867, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102482, 82102482, N'CÔNG TY CP THƯƠNG MẠI ĐẦU TƯ', 493868, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102482, 82102482, N'CÔNG TY CP TM ĐT VÀ CGCN VẠN TUẾ', 493869, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102496, 82102496, N'TRÚC QUỲNH', 493870, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102503, 82102503, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493871, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102505, 82102505, N'PHẠM VĂN BÌNH', 493872, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102506, 82102506, N'LẠI VĂN THẢ', 493873, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102511, 82102511, N'CÔNG TY TNHH CHUYÊN HOÀN', 493874, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102511, 82102511, N'CÔNG TY TNHH CHUYÊN HOÀN', 493875, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102512, 82102512, N'CÔNG TY TNHH THƯƠNG MẠI', 493876, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102512, 82102512, N'CÔNG TY TNHH THƯƠNG MẠI NHẬT BẢO ANH', 493877, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102522, 82102522, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI', 493878, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102522, 82102522, N'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ DỊCH VỤ AO TA', 493879, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102523, 82102523, N'CÔNG TY TNHH SÁNG TẠO VÀ ĐẦU TƯ', 493880, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102523, 82102523, N'CÔNG TY TNHH SÁNG TẠO VÀ ĐẦU TƯ PHÁT TRIỂN THƯƠNG HIỆU KODO', 493881, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102529, 82102529, NULL, 493882, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102529, 82102529, N'CÔNG TY CP DU LỊCH DẦU KHÍ', 493883, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102529, 82102529, N'CÔNG TY CP DU LỊCH DẦU KHÍ PHƯƠNG ĐÔNG', 493884, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102937, 82102937, N'CÔNG TY TNHH HYUNDAI E&C', 493885, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102938, 82102938, N'NGUYỄN THỊ HƯƠNG', 493886, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102938, 82102938, N'NGUYỄN THỊ HƯƠNG', 493887, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102942, 82102942, N'KIOT CÔNG VIÊN DỊCH VỌNG', 493888, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102945, 82102945, N'DOANH NGHIỆP TƯ NHÂN HOÀNG', 493889, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82102945, 82102945, N'DOANH NGHIỆP TƯ NHÂN HOÀNG NGÂN HẢI DƯƠNG', 493890, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82103206, 82103206, N'CÔNG TY TNHH NGUYỄN HOÀNG', 493891, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82108774, 82108774, N'CÔNG TY CỔ PHẦN INTIMEX VIỆT NAM', 493892, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82108774, 82108774, N'CTY CP INTIMEX ViỆT NAM  ', 493893, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82182756, 82182756, N'METROPOLITAN-COCA-COLA OFFICE', 493894, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82182826, 82182826, N'CÔNG TY CỔ PHẦN THỰC PHẨM', 493895, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82182826, 82182826, N'CTY TNHH NHÀ NƯỚC MTV THỰC PHẨM HÀ NỘI-TRUNG TÂM TM VÂN HỒ', 493896, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82182855, 82182855, N'CHI NHÁNH CÔNG TY TNHH METRO', 493897, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82183339, 82183339, N'CTY TNHH TM VÀ DỊCH VỤ HẢI ANH', 493898, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82183370, 82183370, N'CÔNG TY TNHH CJ CGV VIỆT NAM', 493899, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82183370, 82183370, N'CÔNG TY TNHH CJ CGV VIỆT NAM CHI NHÁNH HÀ NỘI', 493900, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82183436, 82183436, N'CTY TNHH TM-DV HƯƠNG LINH', 493901, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82183450, 82183450, N'CÔNG TY TNHH DỊCH VỤ EB', 493902, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82183457, 82183457, N'CTY CP DT TM&SX HƯNG THỊNH', 493903, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184029, 82184029, N'NGUYỄN MAI HƯƠNG', 493904, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184061, 82184061, N'TRẦN THỊ ĐÔNG', 493905, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184078, 82184078, N'Nguyen Van Thanh  ', 493906, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184090, 82184090, N'NGUYỄN NGỌC TÙNG THỤ', 493907, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184096, 82184096, N'NGUYỄN THỊ HOÀNG NGÂN', 493908, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184144, 82184144, N'DOANH NGHIỆP TƯ NHÂN DUYÊN HÒA', 493909, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184411, 82184411, N'BÙI ĐỨC HUYÊN', 493910, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184413, 82184413, N'CTY TNHH DV TM TỔNG HỢP ĐỊNH TRÂM', 493911, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184417, 82184417, N'DNTN HÒA PHƯỢNG', 493912, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184423, 82184423, N'NPP HƯƠNG NAM', 493913, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184423, 82184423, N'NPP HƯƠNG NAM  ', 493914, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184425, 82184425, N'NPP HOÀI ĐÔ', 493915, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184426, 82184426, N'DOANH NGHIỆP TƯ NHÂN LONG HẰNG', 493916, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184433, 82184433, N'DƯƠNG THỊ OANH', 493917, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184441, 82184441, NULL, 493918, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184441, 82184441, N'LÊ THỊ LỘC', 493919, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184455, 82184455, N'DOANH NGHIỆP THƯƠNG MẠI TƯ NHÂN', 493920, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184532, 82184532, N'CÔNG TY TNHH ĐỨC OANH', 493921, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184693, 82184693, N'LÊ KIM HÙNG', 493922, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184693, 82184693, N'LÊ KIM HÙNG  ', 493923, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184695, 82184695, N'TRẦN THỊ TỨ', 493924, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184695, 82184695, N'Trần Thị Tứ  ', 493925, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82184776, 82184776, N'NGUYỄN THẾ VỊNH', 493926, N'VN12      ')
GO
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82185036, 82185036, NULL, 493927, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82185036, 82185036, N'MDC HÀ HÒA  ', 493928, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82185037, 82185037, N'CÔNG TY TNHH CJ CGV VIỆT NAM', 493929, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82185037, 82185037, N'CÔNG TY TNHH CJ CGV VIỆT NAM CHI NHÁNH HÀ NỘI', 493930, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82185408, 82185408, N'DNTN BÃO TUYẾT', 493931, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82185910, 82185910, N'NGUYỄN THỊ KIM THANH', 493932, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186041, 82186041, N'CÔNG TY TNHH DỊCH VỤ EB', 493933, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186041, 82186041, N'CÔNG TY TNHH DỊCH VỤ EB HẢI PHÒNG', 493934, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186051, 82186051, N'CÔNG TY CỔ PHẦN TRUNG TÂM', 493935, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186051, 82186051, N'CÔNG TY CỔ PHẦN TRUNG TÂM THƯƠNG MẠI V+ HÒA BÌNH', 493936, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186108, 82186108, N'NGUYỄN VĂN DŨNG', 493937, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186108, 82186108, N'Nguyễn Văn Dũng  ', 493938, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186121, 82186121, N'VŨ THỊ NGA', 493939, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186128, 82186128, N'TRƯƠNG THỊ DÂN', 493940, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186134, 82186134, N'CÔNG TY LIÊN DOANH KHÁCH SẠN', 493941, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186134, 82186134, N'CTY LD KS TNHH HÀ NỘI HOTEL  ', 493942, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186205, 82186205, N'NGUYỄN THỊ CHUNG', 493943, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186299, 82186299, N'NGUYỄN THỊ HOÀI', 493944, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186299, 82186299, N'Nguyễn Thị Hoài  ', 493945, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82186333, 82186333, N'CÔNG TY TNHH NOBLE ( VIỆT NAM )', 493946, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82203212, 82203212, N'THẮM HÀ', 493947, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82209032, 82209032, N'CONG TY TNHH KHACH SAN NHA HAT', 493948, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82209032, 82209032, N'CÔNG TY TNHH KHÁCH SẠN NHÀ HÁT', 493949, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82217205, 82217205, N'CÔNG TY TNHH SIÊU THỊ PCSC  ', 493950, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82220553, 82220553, N'CÔNG TY TNHH MỘT THÀNH VIÊN', 493951, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82220553, 82220553, N'CTY TNHH MTV DU LỊCH CÔNG ĐOÀN VIỆT NAM ', 493952, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82300003, 82300003, N'CTY TNHH LIÊN DOANH KS THỐNG NHẤT', 493953, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82300003, 82300003, N'CTY TNHH LIÊN DOANH KS THỐNG NHẤT METROPOLE ', 493954, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82300506, 82300506, N'CONG TY TNHH DUC NHAN', 493955, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82300506, 82300506, N'CÔNG TY TNHH ĐỨC NHÂN', 493956, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82300512, 82300512, N'CÔNG TY CỔ PHẦN DAEHA', 493957, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82300512, 82300512, N'CTY TNHH DAEHA  ', 493958, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82300554, 82300554, N'CÔNG TY LIÊN DOANH CÂU LẠC BỘ', 493959, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82300554, 82300554, N'CTY LIÊN DOANH CLB HA NOI  ', 493960, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82301073, 82301073, N'CÔNG TY TNHH THƯƠNG MẠI MINH HOA', 493961, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82301073, 82301073, N'CTY TNHH TM MINH HOA  ', 493962, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82301170, 82301170, N'CÔNG TY SIÊU THỊ HÀ NỘI-TỔNG', 493963, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82301170, 82301170, N'CTY ST HÀ NỘI - TỔNG CTY TM HÀ NỘI  ', 493964, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82302094, 82302094, N'CTY CO PHAN NHAT NAM', 493965, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82302094, 82302094, N'CTY CỔ PHẦN NHẤT NAM', 493966, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82302372, 82302372, N'CÔNG TY QUỐC TẾ HỒ TÂY', 493967, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82303193, 82303193, N'CHI NHÁNH CÔNG TY TNHH MỘT', 493968, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82303193, 82303193, N'CN CTY TNHH MTV HỘI NHẬP PHÁT TRIỂN ĐÔNG HƯNG TẠI T.P HÀ NỘI', 493969, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82303372, 82303372, N'CÔNG TY CỔ PHẦN DỊCH VỤ HÀNG KHÔNG', 493970, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82303372, 82303372, N'CTY CP DỊCH VỤ HÀNG KHÔNG NỘI BÀI  ', 493971, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82305109, 82305109, N'TỔNG CÔNG TY HÀNG KHÔNG', 493972, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82305109, 82305109, N'TONG CTY HANG KHONG -SAN BAY GIA LA', 493973, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82305241, 82305241, N'CTY LD SAKURA HN PLAZA-', 493974, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82305241, 82305241, N'CTY LD SAKURA HN PLAZA- KS NIKKO HN ', 493975, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82405748, 82405748, N'CÔNG TY TNHH THƯƠNG MẠI VÀ', 493976, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82405748, 82405748, N'CTY TNHH TM&DV Nghĩa Hằng  ', 493977, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82415018, 82415018, N'TRẦN VĂN BIÊN', 493978, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82415018, 82415018, N'Trần Văn Biên  ', 493979, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82415051, 82415051, N'PHẠM VĂN THẠO', 493980, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82415051, 82415051, N'Phạm Văn Thạo  ', 493981, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82502932, 82502932, N'DOANH NGHIỆP TƯ NHÂN VINH OANH', 493982, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82502932, 82502932, N'DOANH NGHIỆP TƯ NHÂN VINH OANH  ', 493983, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82511458, 82511458, N'NGUYỄN BÁCH THẮNG', 493984, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82511458, 82511458, N'NGUYỄN BÁCH THẮNG  ', 493985, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82511487, 82511487, N'DOANH NGHIỆP TƯ NHÂN', 493986, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82511487, 82511487, N'DOANH NGHIỆP TƯ NHÂN TM CHUYÊN BƯỞI', 493987, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82708267, 82708267, N'LÊ HÀ CHINH', 493988, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82708267, 82708267, N'LÊ HÀ CHINH', 493989, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82708278, 82708278, N'CTY TNHH HẰNG ĐẠI', 493990, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82708278, 82708278, N'CTY TNHH HẰNG ĐẠI  ', 493991, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82708300, 82708300, NULL, 493992, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82708300, 82708300, N'NGÔ THỊ SINH  ', 493993, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806258, 82806258, N'DNTN ĐỨC DŨNG', 493994, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806258, 82806258, N'DNTN ĐỨC DŨNG  ', 493995, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806260, 82806260, N'NGUYỄN VĂN TOÀN', 493996, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806260, 82806260, N'NGUYỄN VĂN TOÀN  ', 493997, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806263, 82806263, N'CTY TNHH ĐOÀN ANH HÙNG', 493998, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806263, 82806263, N'CTY TNHH ĐOÀN ANH HÙNG  ', 493999, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806266, 82806266, N'NGUYỄN VĂN THỊNH', 494000, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806266, 82806266, N'NGUYỄN VĂN THỊNH  ', 494001, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806280, 82806280, N'TRƯƠNG VĂN THẮNG', 494002, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806280, 82806280, N'Trương Văn Thắng  ', 494003, N'VN16      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806285, 82806285, N'CÔNG TY  TNHH NHÀ HÀNG QUÁN ĂN NGON', 494004, N'VN12      ')
INSERT [dbo].[tbl_Comboundtemp] ([Code], [codeGroup], [name], [id], [Region]) VALUES (82806285, 82806285, N'CT TNHH NHÀ HÀNG QUÁN ĂN NGON  ', 494005, N'VN12      ')
SET IDENTITY_INSERT [dbo].[tbl_Comboundtemp] OFF
SET IDENTITY_INSERT [dbo].[tbl_CustomerGroup] ON 

INSERT [dbo].[tbl_CustomerGroup] ([Customercode], [Region], [Customergropcode], [Group Name], [id], [AdressGroup], [Phone]) VALUES (82100110, N'VN12', 82100110, N'teST', 284, N'                                                                                                                                                                                                                                 ', N'          ')
SET IDENTITY_INSERT [dbo].[tbl_CustomerGroup] OFF
INSERT [dbo].[tbl_EmptyGroup] ([id], [Name Group Emptty]) VALUES (1, N'Két Vỏ Thường
')
INSERT [dbo].[tbl_EmptyGroup] ([id], [Name Group Emptty]) VALUES (2, N'Két Vỏ 1 Lít
')
INSERT [dbo].[tbl_EmptyGroup] ([id], [Name Group Emptty]) VALUES (3, N'Két Nhựa thường
')
INSERT [dbo].[tbl_EmptyGroup] ([id], [Name Group Emptty]) VALUES (4, N'Két Nhựa 1 lít
')
INSERT [dbo].[tbl_EmptyGroup] ([id], [Name Group Emptty]) VALUES (5, N'Joy 20 lít
')
INSERT [dbo].[tbl_EmptyGroup] ([id], [Name Group Emptty]) VALUES (6, N'Bình Postmix/ Co2
')
INSERT [dbo].[tbl_EmptyGroup] ([id], [Name Group Emptty]) VALUES (7, N'Bình Postmix 9 lít
')
INSERT [dbo].[tbl_EmptyGroup] ([id], [Name Group Emptty]) VALUES (8, N'Pallet gỗ
')
INSERT [dbo].[tbl_EmptyGroup] ([id], [Name Group Emptty]) VALUES (9, N'Pallet nhựa
')
SET IDENTITY_INSERT [dbo].[tbl_FreGlass] ON 

INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82183457, N'VN12', 63360000, N'1510', 1547, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (70144149, N'VN12', 27648000, N'1510', 1548, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82101593, N'VN12', 28800000, N'1510', 1549, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82183339, N'VN12', 61056000, N'1510', 1550, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82183436, N'VN12', 34560000, N'1510', 1551, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (70029364, N'VN12', 24192000, N'1510', 1552, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82100110, N'VN12', 27648000, N'1510', 1553, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82184096, N'VN12', 27648000, N'1510', 1554, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82102088, N'VN12', 21888000, N'1510', 1555, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82102041, N'VN12', 38016000, N'1510', 1556, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82203212, N'VN12', 29952000, N'1510', 1557, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82101208, N'VN12', 28800000, N'1510', 1558, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82102089, N'VN12', 12672000, N'1510', 1559, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82100145, N'VN12', 64512000, N'1510', 1560, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82184078, N'VN12', 28800000, N'1510', 1561, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82100871, N'VN12', 18432000, N'1510', 1562, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82102161, N'VN12', 21888000, N'1510', 1563, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (80000229, N'VN12', 52992000, N'1510', 1564, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82102103, N'VN12', 3456000, N'1510', 1565, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (80000014, N'VN12', 720000, N'1510', 1566, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (70035007, N'VN12', 1104000, N'1510', 1567, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (70034379, N'VN12', 435000, N'1510', 1568, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82101785, N'VN12', 2304000, N'1510', 1569, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (70034955, N'VN12', 1152000, N'1510', 1570, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (70146808, N'VN12', 720000, N'1510', 1571, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82102512, N'VN16', 23352000, N'1510', 1572, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82102283, N'VN16', 26496000, N'1510', 1573, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (70034910, N'VN16', 17280000, N'1510', 1574, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82102212, N'VN16', 2304000, N'1510', 1575, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82184455, N'VN19', 48264000, N'1510', 1576, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82184426, N'VN19', 7920000, N'1510', 1577, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82100290, N'VN19', 11520000, N'1510', 1578, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (70147327, N'VN12', 21771000, N'1510', 1579, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (70148845, N'VN12', 27072000, N'1510', 1580, NULL)
INSERT [dbo].[tbl_FreGlass] ([CUSTOMER], [SALORG], [COLAMT], [PERNO], [id], [CUSTOMERgroupcode]) VALUES (82100375, N'VN12', 49536000, N'1510', 1581, NULL)
SET IDENTITY_INSERT [dbo].[tbl_FreGlass] OFF
SET IDENTITY_INSERT [dbo].[tbl_Productlist] ON 

INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'0331CFB', N'CFB 300ml Sprite 24', 14060, N'300ml RGB x 24 Glass', 1, 1)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'0509', N'Pallet F&N Wooden', 15720, N'0509 Pallet F&N Wood', 8, 2)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'0514', N'Pallet Rental', 15720, N'0509 Pallet F&N Wood', 8, 3)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'0554CFB', N'CFB 300ML FANTA SPLASH 24 ULTRA', 14060, N'300ml RGB x 24 Glass', 1, 4)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'0700', N'CANNISTER 9L POST MIX', 14240, N'9L P/Mix Cannister', 7, 5)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'0720F', N'Cylinder CO2 7kg Full', 72000, N'Cylinder C02 7Kg', 6, 6)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'0740', N'Cylinder CO2 9kg Empty', 14285, N'Cylinder CO2 8kg', 7, 7)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'1030HDC', N'Crate 300ml 24 Ret Half Depth', 15020, N'300ml RB Crate x 24', 3, 8)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'1363', N'Coke GG 300ml 24 RB', 40150, N'RGB 300ML x 24', 1, 9)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'1363CFB', N'CFB 300ml Coke GG 24', 14060, N'300ml RGB x 24 Glass', 1, 10)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'2030', N'Sprite 300ml CR 24 RGB', 40150, N'RGB 300ML x 24', 1, 11)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'3156', N'Fanta Orange 300ml 24 Fun RB', 40150, N'RGB 300ML x 24', 1, 12)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'3459', N'Fanta Sarsi 300ml 24 RGB', 40150, N'RGB 300ML x 24', 1, 46)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'4453CFB', N'CFB 240ml Samurai 24 FD', 14330, N'240ml RGB x 24 Glass', 1, 13)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'4471CFB', N'CFB 240ml Generic Clear 24', 14330, N'240ml RGB x 24 Glass', 1, 14)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'4661', N'Samurai Strawberry 240ml 24 RGB', 40060, N'RGB 240ML x 24', 1, 15)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'509', N'Pallet F&N Wooden', 15720, N'0509 Pallet F&N Wood', 8, 47)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'514', N'Pallet Rental', 15720, N'0509 Pallet F&N Wood', 8, 48)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'6600', N'Teppy 240ml 24 RB', 40060, N'RGB 240ML x 24', 1, 16)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'6770', N'Samurai 240ml 24 RB', 40060, N'RGB 240ML x 24', 1, 44)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'6770CFB', N'CFB 240ml Samurai 24', 14330, N'240ml RGB x 24 Glass', 1, 45)
INSERT [dbo].[tbl_Productlist] ([Mat Number], [Mat Text], [Mat Group], [Mat Group Text], [Empty Group], [id]) VALUES (N'740', N'Cylinder CO2 9kg Empty', 14285, N'Cylinder CO2 8kg', 7, 49)
SET IDENTITY_INSERT [dbo].[tbl_Productlist] OFF
SET IDENTITY_INSERT [dbo].[tbl_Temp] ON 

INSERT [dbo].[tbl_Temp] ([id], [Version], [server], [username], [password], [signoffby], [possition], [phonecontact], [siteid], [note], [contactperson], [nameofbarnch], [addressofbarnch], [DeleteData], [EditServerData], [Depositintput], [EditReportsaffter], [InputDepositInpass], [PriodMake], [Systemconfig], [uploadBeginbalance], [endyearPackdata], [makedepostfromadjamount], [deductdepositamount], [redoInputviry], [uploadpriviousPriod], [imagesign], [nationKA], [status]) VALUES (1, 16, N'DESKTOP-8D4F853\\SQLEXPRESS                                                                                                                                                                                                      ', N'tr1                                                                                                                                                                                                                              ', N'123123                                                                                                                                                                                                                           ', N'Trần Thị Bích Liên                                                                                                                                                                                                               ', N'Trưởng phòng Tài Chính Kế Toán Chi Nhánh Miền Bắc                                                                                                                                                                                ', N'Fax: 04- 33853723                                                                                                                                                                                                                ', 1, N'Adminshowall                                                                                                                                                                                                                     ', N'Nguyễn Thị Lệ Hằng ĐT: 04-33853725(số nội bộ 267) hay Hoàng Anh Tuấn / Trần Thu Hương (số nội bộ 158/ 256)                                                                                                                       ', N'Chi nhánh Công ty TNHH Nước Giải Khát Coca-Cola Việt Nam tại Hà Nội (Bộ phận Công nợ)                                                                                                                                            ', N'Quốc lộ 1, Duyên Thái, Thường Tín, Hà Nội                                                                                                                                                                                        ', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0x89504E470D0A1A0A0000000D494844520000018C0000008D0806000001D3157DCD000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000027E149444154785EED9D6956DB58B7F7EF2CEEBA759FAA5448485286C40E8DE8DC806C6CCBB265C9966C2463B9C31D088C4D93A4EAAEBBEAF37DC7F00CC003600E1A80BFD750F67BB62C480824103060C8FEADB5D7918E1B1A69EB7FF669F6F90F8218036AB50F904AB5ED30BF658B525B73AB1D424BC5B373DF5BDD760FC78BA4B807EEE139F2F9E659FDC473FED2F73C2A44B9C9FDE11160F6BDFC78FF18B3740886B16BBF9C48DB8B5CD9F9434CD3E29C171F135EAFCE19857D78F352B1A3D1CFB7DA75D0F52E2746AD03F774F4AC27AC817B7825B35E93336B5DEEF544EABB0E2EB3DB6F912B82AAEE7ADCAAF1C2EBD19DDBC8E3519C3F2493D986B9B902A4930D88F2B587BBC56479EFDA570379FD2A399E8FDA1FE5E5EF89C7FFD825881F4014CFB7A1AE22141D8AE05822A5764EDCC30B4852D3939477C8C109E2A911E66BB0C6D7EC50A876AE29125C2C9E35659697361FA7F35B9DA3B35F7C61B6D8770FC70321DEF9EE7F55921A8EBE64350B62D12DE7BD996C757CAE4452DCBDF2978909E5B3DB4AD5C72CFAD3D4836BFD377DBECA5920C4F3C3D8A352B104A7E20A0A85038F9CB2C6AB99FF82C5E41B9BBD4BFF7854FB70B465AB8AF543CD9B1B93CFF76EF583E6E674585AD8845C6E67BC1CFC7B6839CBF6FB3FDF560F8E611CDDCFE5BE4B022B63F478BC29C1D013F823C2E11FEB287B1288526B3C9F4072F2FB6225497BFD7CBEF3F81F00044110C4C3A1AA5D2EC237004BB7EA526667D44B9B08994C0362E1EAA5119324D51F4F1BFFA128953F413E7F70ADF0F44B94CCC5E6CBE1C7FF81E7CFA3172ED41F13A99FAF7DF723241357778E5CC5BBA9BCF31D79A323942AC3AEACD7AF145B566BDC8A3BA47ECAD27C962EC8D7A8D9CBFB386EC2F49466CFCE0E3B7F72FA9EF3787A3591B679DEE4D6D75B673FA751BB5D77C693A350F87427DD1C382F03CB7265382D68CA23DBD353695BDBD8F967DA23434EB76E75F171FA83245A5A28D8B4438106E4D59E36B65322AE8359FEDC1B3E6A66DD8B51AB0D451FE7984CFC17FF6F3C4E261ADFFCB93C5FF188628D0B33C1E7E6366143EB409CD5B92F3F4DEEBAAFCDF7566177EAE7CEF650885A4DDF44550FEEF46EF3F992361FD6EFCCF39E0CAB91CF224A3C30EBD1F60FCD6423EE90257F893C635C10C5E699B0DE250B4BF9BECF27D085BF8A95958AC0878673254681AAB4353ED20485956E1571131485054F2B15580ED66C45E968A268713CDFC409F19C2C7739EC202C147B7654D80535D701A34891334110044110044110A30117E3A6533899BE0DE1C8961D0E6FD9B262D9EBEBDF1E9F40A6272F4E5490654B482BB71B60FA29498B7B2CB2FEFE5443BFBF74E962345C986C9A1707B11289ED67A9F4D678CDB11F67AAB53FA158FA78ED41A1A450B97041F01F5EAB1FC2E2AC79A13F2C182890675C073171794A8BAB109395739F4B88CD815939BE703102019DE379F55E3A2C1F2DF9FCB1502C7EBC71DFD3D78F9EA4D48060B00605B30B5ABE7D288AC3B1717E3547C3B0DF23CB2E045E0CF7F446E06402343C8EAC9741D72D0EE74CE139CF9B801D90783C3F9FB2370CEBA4F0986774DC1586C12E44F6C767105E46345139494955473F6ACD2E87F960F0D8BF5C007EB5E17844325911CCD2982D921B072A953F05D3BC9D477CC9B35F3FA747C28B8113D8F0D8BF9C0321DE3ABB00CD9DD14D9C7B32A8EAC1377324DC049FEFFCAC104C3084652251827078B81CBB5C1EFD85C038A8B879D44FC61F69FC924EDD7E6EEDD7BC7F6738DF793A810D67136299DBB0E05FBF44402BECFC8DE7B741162D2E2DEED8CB4B35C8AB0757CE901F7BF2F9BB99C836F7DE742E0666ABC2F234631537571824E53A6B24FCD85A350C1C8DCD5E3FB2DE18A8CA2EA8F223CC4376154AA67327CDCBD9F7C3EC0F5A7E38E9F9F462785EC6AF6C396136AEA450EFE3D4CEB550194E731A3C698AE6873B7BAE4E7B72CE772BD9613E9ED31468A7E0EC143E548399391D16D93F7D3DB2850BE31F362DDA437297736D7DDEA18067B5E162E7D550FDCE2EFCA347D78FEFF40E3CCDA5A7BB3926797F9302BB6F2108779BCEEBC5C413496C781F18C6E19DF60BF97C92C7EB4D8E347679B2E0C434F7907848E2F1A6271ABD9FB9B6C415D0851823A2A2C5A1B9A7C44382E309A7630AC418F0A36979893B24297E1E53B84B267E8F0E7CBEABFBA37E6AC26BDF9FE7741B70CB8AB9C532A8F99FA0836F54CCCD0FC71C46852034064A669BFAA06ECA32570449BAD98400F480D06A1BCC520F5495FA9E46822C5B5C4C684138D2B21565D7BE6C09999AEF685161C78EA72C28558EC777DB1282200882200882200882200882209E04B889164E3A77A6E3466B1CCE9F40C3FE4C34F76D3722B8600A535386EDE70AD7EAE7C4A5EAF373057B6ECE18D93A2282F826527CD7E3E47B132C88AC360746BED757F52E779D911521D91212C9E6606D6DB802E4BAA0B3F9974C8845AADFDC3CE24B5289E130595AB1ECE0728926AB12A307534BE7733D1013ED81A2EC8D6C926F60A57412E5AF9713D630AC7EA5BA0795AD43783B9DB95652DF38DFF42C2D9441967FD24523C4E831CD3F859CDA837CFE6E67BB4BF18A676EC680B8F4FD5D04306B43EFE82334DB1FE1E58BC8A5794CBE2618280C027EE34E7F7FE227219B3D8642E1C3BD2ECB40A77837ADC169868CAFC12D9A59F30B0E3EFC051BFA01FCFAAF20484ABBE2BECC14ADF1EFAF27B7607E99195F9C661D113707D3BEA4D3A80EA34B76F1A3E0E2E4B5D5E2851BB950D8F56433BB20441B27B8AD4A46B306C1E0303F03260997B355987E93624E35CCF3730AA698898A4355D9347AFFE75412C475C0F43B8ABCFFA00EF1250B0BDA20EAAAC656ED0852E91A9866472895BAF6699A86572FD2361A1EA3922CCE6F00BFD63CCBB9748A772A6DEBC62EB4B78F40CF8D2E2E229E309806292377615479A946454C28DBD3EF34989FDF38D7942BD5F66D4CB184C72F27641B0D8FD131C2E112ACAD352012B97C79446EE327DC3D9DF87114E5106E93BAF02EC10D337D6F3538DD34F394BCDE39BBB95FBF906D343C16595329B892838433DFFB6236D78271B35C99C44F44ADF2278C3A4FDB5DF0DE5780D30D4C11B3667145F3B3634CBF4EDB68782C08A57E56AB4322D18269372D99DFAF7A4CF3402896EE3691C74DC0F11FDC2CD52CF66C216ED991F03644583350CB74A1523E80DB0E80123F484AC1C0FA716CAE343F538459EFE7AE58D3EC725B8DEEA58EF18A29071FAE3AAF3DFF570256D77408476BA0B2801DEBEE0B4C2727469B9C106FF78558DBF62F54211669415ADC01DC41F8BEB68C23AE090ECC4513D68D76C97F28E6674CE6189F15A354EDF44F036F04D3F29DA6E6FBFD9728BC9C889F05D6B2BC3DB2657167535BD80D2FC61B5A3452B6B9994D082D9721196B406113D73F0E97E6B91F211E0385CA8147C97E7ED23E1666DE9D6F4AE5363A50A97CBED9BF0CBEBF863D99414C3406D88D1B75E669D5388C57D03065229ACC9EDE6892D8E807574C1B6DCE5B04EF9406EBE10AE8F91D673C059DC2FD5AE2A950287CF224A50EC614F7DAA41805EFDF6D80D733DCFC016FCEB47C3EFF4328B865FBBCB94B1D8320BE49A170E091C40EDC754ACFBBE2FD74DEF64D0F15A158B6B45A7DFFCC31F24647783795014A1F4AFC301BDA11DC65C2E1BB06D3B69EA66E4D084D4AA541DC1ECCD39214771E7533E3E533A1EFF325E18FD72950D42A8D5813B747C9ECC35348378CF9A5DD4382B83D7C741B784A704B109FC1E5A37E7F15281537417C01A6420FAF37AEB5B28D207E1AD031426B35A0BD0208E22B9656CAC0F3C3ED8709827011C56D788A7B683CFF2DDEA72D22881B83B338E7660B20C51FEFC8304EDE13A5B6160814078B4B1BB0B494A7ED3A88DB93945BC22C730E2CDDAAB105E742294ABB1F8A34074B81326C142CC0DD3BDC970962F4F0C1BAF07EA6004BF39B0FBE3809A766E7F29D7E886FDAAB7C13B29916A8CC0124DAB6867828303B603AB5034B0B155014AB8FABC46EBA17D3D7E03CA6D33509C5D2513FA359F67AAC0D09B10DB90DCB599136AA9F4510770EDEAC78D32E076A7D51B4705F2C1063FBB01A68C17AB80D91302B232D10853D0847772096D885B4BC0F5A6E1F368B0760181D8D16E91004411004411004411004411004411004411004411004411004411004710EDCEF1BD75960B6129EAF398619C34731D3F6CDA4DE67F66FF7F44AF8D5467F6E769396FA12F70B4E3B37F23DCDD8E84134DC8068B40D49A165A7526D7B8DAFD9617ECB0E87EB4E29C65BF6EA6A0DC4540BE2D28FAFC3509486363565C0F4A47AAD4C28E1B52648CACE3FBFFF1ABBB0431341DC09F8F4CF66F721C26F8392DEB3D1395029DC97BF8B986CF5FDFE3224E5FA0FAD305494BA5D2CEDC1EBC904603A7FB7FA5270896F2AD1761668BD7E9E84C0E2D57B8213C48DC02D0514A5A30556AA108FB6FBC3F518376B1A09C996B0C495609D37AFED1C9170C9EE1E7E8450B076A5639C22CB352E1E6900AE2377AB086274E03665C904530765D7666A3192B5E449A122F0810A6B7A55AEFC3EBCB1FDCB4538FCF017BCF7E620BE5EBB56820449AAF7A574FDD16D9E438C39A6F9A720A7BBC0CCBE8BEDCAE46C4B98F36A20C52BDF7DA2EBBAC5C5A235E6187FC2BBE92CBC9DCE5C99D13DCE373DCB5C95A94583B28C10A3A35CFA1324A61277BD7F9F9269F533D9D6779FEAA66971C59205871FFF8205AE08DC7CF14AC708F90D6DFEBD067E7F819A51C4ED318C63414A7521A7F6EEA59B332E553CF3B39B207F2718C79D955AD691E3186FA773D7728C254EB1D1DC5382B839F9FCB19012F7019DC3ADBA1744B1DC4FCB5BDF548D9CBE6BEFEC7D84FDC34FF0E65506C2D1E2E034A096D48A47551B17C636DEFB6236CF53B236E296E8FA3164940EE0C6966ED5BD81BBA42ECC6F7ED3319272D3CEEB7B10592FC1CB170A144A1D90956D4867AA7D395B3D51B5F31B58F2BCEA79F53C0158BA5504F1E3E8FA47164B1C3F6862B685B90253818B8172DEB0B485991CA8AAA5A9EA4EE58FD719080486DDB5ABA12268F93608C9C2B92613CFEBDCFCBCE4380BFBBC90CF8FA6278DF889D0D463D8D8F8F0E0D90A45B16AA3B9A70E19750F8CC2EE3F1BC6AE73937B2665EED5CBF4996368C55DBB58E94170B976C13104B1E87CA6681C809EDBA36921C4F5D1B2C7EC49FCB04A710A6B4E690B0B39E76636CD03414A3641518737B451D873EA2799634C4EA4014B3C578D5D3B57DC8395AF1C23CA9BDC7AB80866D902315E8102EDFC4A5C1735DB0559EE8C85532051166778FE504033F60F97978A206787CD1FB3D6E54AB5E15EDF93CF65EEF58B0C6089E78E636CEEC3AC2FC3E289F3A3DB117EF3FFB02C96779CCF12C49514363F809ADD1F1BA740D031DEBECDC15BAF0A49F9F36878ADD9E5B69A07678EF1E2F7D4996368857DBBD63A84694FFAD2BD078BE58ED66877A8678AB89A4AF52F2814C6A3F9F425E81833DE0D989F31CE358B50315A3B47678EF1C72BF9CC31C2E192DDB08EC0F33A097CF4E2FC29B3BC07850A35A3882B28D7FED2D44C6F2C37B0F47A546ED65782E929ED9C63E86697338A3DE7A9EF38C6A472E6182B4B9ADDDA3E86C9DF45D6943AEF188D5A4F43734F09E27270DE9394DA032CDDAAB1C33B9DABF8DEE6CF39063A85C99C038FB157EACD4B19B0C4F3E0B266D799633CFF350181807AE61895CA8147DF688F7D6CA1EB5D0EAD583CD2CCC2919D88ED40846F4022B1FDCC7D0B7197E0A09D94DC1F6BA740BC5E9DF379CF37A58AE69E6DD6863BD1A2434C79868EE1F7AB1ECF6402AA8D2378F17BD271027F50FD5F2C65B9CD9A8BE3D78472F61129F6FA6A66DF5E8FB607B1A805B9CC21989B4780CE417B89DC33BAF1010CE3E3D8372BD031DEFB2E3A468DC519788C0E31FD260D1E8FCC79994DFD21424EB760EA8F2CAC04D47FFC410D0AA51E18E6C30EE8A9B2C5C9A2C5E555AB2F0A3BF66AA809FEE53A24855D308B07407B8B8C01383B565686DD9DE3CEACD7E4667CE72708AAB93DA8B801343A86071D8395939322F7EA650A14A5657BDE64FACF7E89C206730ABD78BF4DA878BCE9414710E36D4D88B5EDF55073105D6D4232BA0D1BDA2EE06AC2789C9460EC48A5BB800B8DDCD3B1061D63FEFD79C74045700F9DE01B1D034B1CE47BC5E20D16743B7F1B6B3E9D84D7AB77DAB180491E9C0D35A5B626A75A7638DAB2B9D912248416948A1D40074173DF4E8C2B66E91368F9C3B1EB9AFD16B3AC2935E733CF1C03BB5AF5CDF38EF17A42721D23CABD792500C70DD75B60D324BF39BAA9F2E80098DDC4B178A3BFC49506CB5C09C2A112C8521B1CE760EFB9E9F25EE28128540E3CA9E41E6BCF1E3C9A0B878E31F3458CE18C7A573BE71C03036D47395EC63D13FFC59F4D37779EE4AA752365C435E46892D8D092C296BDB4B039F0BDCB837FB1C4E28226944BFB800EE2BE9D78CC94B670C6ECE3EAC7C7E07BC6F779A62C3A4673BB77CE31DE4C66CFC631BE049FDC0B8B068B39DA7D74926894DDECCC30750EDAE9CD2FB3363F3A809A69DBC115D39E9B3506BEE90D585928402A51077C0DA7C1F3FCF797DB128F10EC9E4DCB9F9B208F05AF47E7BE1CC7C8E73BE7D2F2F0811AE7F1640095C5AD3A0706C222BBB1E3D11AB0A73ECCCF1BF07ED680C5F94D58E28A100C94201AA9829ADD06740C556D6BE82C7172829F834D165B64EE6969EA28C1D1EF2F1D4356EA363EFDDD53C731E67C3A60E95611C4F5C9AA9F9B1F8F09748CF7EFE4B39E25740CDDFCDCCB33748C2CF8FDF484277E10C338EAEBC6D1D953F731E18C7C4FE3C8B6E838432EBF7B6E12E046A10BA1509D161D113F8E22F78039C7A30ABA4F996531C6EB5729C0C13B540A39733EAD0E35A1881BE1A4D1943F776F3E36269F8BDCCB1729F07A4567206DD31C2E6925885B91578F346C4AB9A78F8EE7CC319E3F131C67E0C31B273476408C0459E982AE1F3FDA9BC9E7933CAF5FCAF06222FECFE4E41AF03C65112446404ADC01497A3C23DD97F1F299D0FFED9718F87CC9B19E224F3C1264B9CB25C59D47D91BF535A81CEE2141DC0E9CEA10169E866310C4C8E0458B0B855BE41804F1253CDFEAAFAC9C4F3C46103F3DD158DB0EF3E7535C12C44FCFDA5A1DD6E3ED4739E24D10774638D284B878B3853A04F16489093B369A7B4A1004120C566D34F79420086469A564A3B9A70441203CDFD066E765C0E59D6E15411098063F1C6E8E65C266827830502942ABA527B77E616E2E2BFCFEAB7061575682B836CB2B652725A47BFAA809AE9BC2CC5CC67EFE5B14D4CC163906717392628B3946EB51AF8916E526175A2FF7DFBDD5606129DFE738DA9298B82592D4D616974A8F2ECE884B4D8FA8B4353E521FCC2D9740D177C01FA74C20C40891D2DB9092DA639FAF56529B1E8539434C68D94BFE3AAC0B751099634BCC49DCB710C468595828C16AA87EF2F54EA6E380CA1C22A3B4FA6B7C1D6289B6935293BA98897B636DB50EA1B512C8C987DD44057709C2549BA2B86387C375660D509952A85F641824887B0555633558614FE5FB9D5C8801B42475B458DCB2FDCC4173F90E144BBDBEAAD2DE11C498804EB1B2588368B435C06379841B9B9C6E99552C1F6966E9C81693BB764CC018671BF2F9D1FE2C821839D89CC19B54CB7781E7B77017A2819CB66C45D965B6D7C7D7449159D4E2585CE2181E8B7297C3240BA70E80A6EB9D7E3C69D942D21A84E3DB90604EC09C8229C2511FB71E767F24413C3ED01114C9D21CC7C8EC4142D883B5600B82C126847966E11608710B84440722AC4CA5F741D57AA0EBFB60567A679B2B3EA64D6908822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008627CF173054F60D1E4B074AB460AA605C7F47BDC1D7D3F4110C45852500F3CBADEE55466B2683926499696DBD80749DA8664A20DEBEB0DE0C30D58E36B105EAF4324C28C9D8771CF82F5364458C987AA200A2D90150B360A1D276336EE7CE3FE987B818F573C7CBCD67F33A9C3CBDFD2105C326D140EF7E55B23CB96C0AF35617E6E137CEF74F8FDB728F8DEEA7D120E82209E1CAABAEB51D58E56328F2193EE40226A41843D0023ABCD41345CB7D349CBCEE53B7DDCB70305E4D464B979663C5F3B6798EFF76B43B148A45A278B9C0973730624D35B9094EB77BA1F096EBC532CEDF597164A108E6FA158C0B3FF0E41345CEDC7F9DB6DCF26C59B1E4DEDC2AC6F0324D93A492B3B7FA7656BF0F259020563A4A244100471EF48F15D8FA274B48CB207EB9116C4636D10C43A6432FB76A978D437F23DCD892CA4DD3B6B1D3B7B6B4A6D2D296D9D040255585ED681E7CD3B110E143345A9DBEB9112587BB8FBC2218B849A100B57ED281336F76D37020583455AFFCBC4D0F9DD7167EC1813D8D04A997D7FFDD6DF4F100471AFE4F30742B9C22207261049C1622DEB3A9627281A281EEEDB1E0C8C3016E7CD93207BC8F2AB26FBDD2A23150EC3B0B450A834300ABB70F8E14FA8543F807FB90A3EAF660702A37DA04B52438B471A8358A40E78EC561304418C27B86553B1FC51334B1F2111DF0351D881BCD63BC9B3C8C1D9D2E90E2387DB8042C1EC64656613456324C221CB358E0986BDBA5A8246BBCB04E32FA8D50FE1DDB40A539E38F897AA7D9F4F1DC9FF0305221AA90F7CEF724C2CEA7DDA7C9D2088B10445A25CFE4BCB6F1C4252DC0559DA67027134148847B6E79FA2B6B5807F73100A9880C76EF58DD0758B4BA5B76C295D87BDEE111C7EFC139ADB9F809BDF84579331261A317B71F6F6E30CD8F5140C18F6E25C11B0A4AE288220C68A42E193A758FCA865944390921DC8E70F5C9178FC9BC2A2500403C541C05F0449A9DD58344C732818F566178E3EFE8F6395AD63F0F9F230F13CC284A3786BC1F0FB0B9E85D9627F6E7A03961714E0F93C75451104311E18C6B1B0B9F91192890EA4929D2723125F238A652D18DC1C70737990D2B57E5CFAB1194D6A61D7536F74FB82D080F6EE311C7CF81F38F8F8176C9AC7F0C79B2CFCF2CB2A138E9CCD472F170C9C5D85E69E7E139E57B9254EB1DFBC8802BF9AEBB3F327772D08827844A8EA27F6F0EAB168A2076AB6074C30FA281CEECB4F161C1758982B0C42A122E078845B7D2D54DDE29272D366C604E313EC743E41D1EC412CDA86C98934FCF6EB2A846326FBDEF620ADB4FB8AD2D64EC71D54B5A1CDBC97071BBA054C34BEFB7331A2F0BC890EF8B51C8B2E54EA8A2208E261C8E78F858D8D0F20081D90241CB87EFA22F125F800C701E4195F81451938F3E8FA03C9AA626942AC09DC7C0E44A931C8E9BBF666B137C075136F26B3100C560792D2AEE05458A3D8D352C916ACAC6C80593DF82791DC84296F0A8464C11645FD9B22C0F33AB7C6E76DCF1FB10B5D514666FB997B4810047177A03068399C0ADB0326183F9D507C8928D6B8B550D19E9FC93BB38FE2F16F774DE58D8EA017F621996E40426C83986E0CF279EBEC412ECA4D8E0986FDE695026F5E2BE7A6D5CA6A8D4B265B76787D134AD503989DCEC3F27CE94AC1989F4FD96BFC0644C561D756DEB0840D6DF76471360D7A6EAF5F50C773561A41108F9C7CF640C8647A90CD7441D58E7F6AA13885E70B1E51ACF667BC06B092D9F9AE298C3A14B5A349520B524C28360A9D9352E5E86FBDD019E4F23B609ADDB3F74F4ECADCAB1769261819C012CFDD979C2E2CDDDCB3D74225D0CD0E8456B620B85CB3313794FB960B447993F34EA56D49AA80AEEFFEBD615827E56A0F850212F1CAC0C87768009C2088D1824291530F2199D8034D3D38C992509C23CA4482E334DBEBCDA060380F618C26CCD22184029B9092AA2786D1D130C589F30146A9D4B54BE52E98B52F04E339138C09C57EF58209062BF1DC7DC9110CD5D8B5E76755508D3DF033C198F12983F5F56F4FED45315BE78B7D261A904A554E8AA59DBFCB95DE404C94A158FE1CD9100441DC1A1CB8CE6B872026B621CF840285C37D89F802148C9850B6DF7A5488252A902BECC3FCBC0E217FE124295F5CE0576B7639140C73AB0B78EC563B82F17242B6275FC8E0949708062EF22BD50F6165A90ADEB73244222D3B1AFDFEC077225175C62B70DD8751B0A0B1BD0F850A7545110431022A953F05D3FC00E9F49E23143FC38CA7DB702A18F3B306FCFADF3178F54A1884FCC56FB6E0512458646137DA871704E3D5449A4518691661A42F0846385CB2D7420634768E617DBD056F3DD7130C0405A258DEEBE78D06E0FA0FB79A2008E266542A9F3CD5DA2750941E7BA81C9F3023A1B8062818D3539AFD762A07AF5F09303F63D8B3B3DF1E8CC66EA88C6A41CB3A642DFDCF6B544E05C3F34AB920183C6F726B41C35E59D6A0B97B0C91F53ABC7A2180106FD9987DD77DDBA5549858D4B70EA058DA867A9DA24482206E8969FE2968EA01A8992E546B1FFBB852DB7D89B8028F47F5BCF5E4FECD4463E07BB701281EDF130CDDEC7205B30758BA550E38C8FDFA85CC220C09B0FC72D05B144D6E7949B3F9B50D685A1F201E6FC3F35F13100EE3C0F7B705C3340F844A895DD3CA1EA070B8D5C48890A45DCFD769F2D1C6217126418C1C148A52E913A4A57D16557C6251C59FD402BD215EAFCEF9BC06F87CBA8DC76EF539B06BC828F6FA9ABA7DA16BC8E30AC6F41F194730F0DC7D89451879CD33991848720DB65A2CC2886C31C110616222690702C305794B6B99736B2B8A454B53D9CF29977B34C0FD030CF75FC13C6743338C9E66E8BDBEA1776D344D39B4C36B4D3B12690EF8D5A693863F29EE802C59A048964682413C49CAE58F5A46EE8122F74EF2344E716B502470111F138D6F0A46ADD6E58AE69E6D96F6008FDD6A071488290F138C2905B03C150C8C2EA6A7D2F69BC93864D4266C567A202BBBF062220993CFC5C14A40FBDB1F504F666692E07C11C330BAB059DC4551A2EBEA12670F71DC991117438A4EE95ADCD298F59371CB1685DD41C05F8760A80ED1D83624040BD4EC3E30C100140E556622221F73CE9E2CAC7C8A696F08E202984E5C91BBA01B1FFA74D38F86592612B3BE22BCF719361EBBD5E7306B16A76ABB7665AB73A9604CBF4EDBEF588481E5A960783DAC9E09C6DBA934289936138BD640CEB4FEDFD49BCCE05FFF198649261CDE7732E4362DD0F49D7FA46C0B30BA70BEF427211E6F7AC468933DC4D9FF57E968AAB2D757955D3B166ED9D150D35E9AAD0C96E7AAB8D811FC4B2688891D48A5B68109862646996830FB1C55903F1084033A433E7F00B1580B986890588C9059AFC904A30033BE22138CCB930662CB54DFEC42B97671D11C0A840785E24D1A9CF20BC1783191B65F4EA49DD4E73C5FED633DCF578477EFE493972F1220A51B10131A9092EA27F9FCD3892A70E123EE4A880FF26189EB593A7D1CEC470B2ED5ECE0720D024B155859342111DF0635B30765B30B8E70E098028B229C3DDF99A8B85F4B10C455E0EE76B98D2348A6F7492CEE001489F99922CCBFFFB66014CB1D2DA7B7CF2DD83B056745BD9E48D993CF45189643C1C0C1EF67FF15658221C0FC7CE1C2803AEE659ECBEF432A5DB7F1C1EA568F3DB86739460598C491593F9DAADB68C958DD0E06B798D507A1501D22D116AC471B4C0C9AA0691D2814510C2C470C1C1BD34DB708E2D1522C1F69A9E41E88E9CE00538EBBD5C408194618C56F46182812C5F29E5DAC74BE211822F7F2B968BF7999062CF1DCA99F8C7213BF8471CAEE80E32EAEEF9055D6824E6FB346C0C3A7FAC0563CA647413B158254BA69A3AD054BF6CAE2D016678DC1DCBB022CCE19105DAF405A6A38DBC66214F1A5FD484247822046008A8592DD07398BFB53746810F48E188E6118F0FEEDE5631828125A7ECFAED6F72F8C5F201851382BBC272EAEF4F6BC8C7BD0DCD373E083351EAB8392B54E14D5D246D9F58251802CB2873733DCA90F4D55DA5A26DDEE67E4B61D09971D5BE60C7B69AE3498F31ACE38C1F2421122912A48E9260A411FC500A3892F8DBA880862CCC05DEF721B5DC8E5BBD40575C7E0CCA877D31B2CC2B87C9694AA77B9ACBA03B5C6E59180D7AB726F5E29F61FAF3280259EBB2F5D899CB5844CD68250A00CDC6C1EFC2B06F0C19A1D8B0E6D892BD87373BA63EF9DD2706C71BE602FCD17D943BF6647C3553B18283986C7D3D3FA60CAA3C3DB691D66670C9867D140D06F422C5283ACBC0D281A281EA711851355900810C4E304C5229DEE415AB66C7C58B9D5C41DE1F5E8DCDBA93C4C4FE56C3C76AB1DB06B053742929536A8EAE5A939F8408DF3BECDD8EFBD79C0F25B33ADAE03A6598F465944E01A7EF7E2228B8066CFDB69D4706AA7D1C497869B345D67773F82201E29BA7ECC65B423C8AABD138316E3DD0B5E8FCABD9DD6C0E79599609C8F0E502464A565CB4AE3BB82110A6ED9DE775998F3E9762070F9C0394110C4C8C06481CCD883A903281C6E3571C7E0F4D799E90D78EF95C13795EEFB7CD259AB5C372D4ECB59F666C9023C76ABCF110A35B4E0B209C1606980C76E354110C4DD8002A11B47901477C1308EFA85028D5BDC17B31E9D7B3F9DB7FF789D8437AF93B6677238CB09534D30A1E867B3DB97EE43B1B6567DC644E27F43C1128402A57E3058A788902088BB27AF1E69499145162416F70E0AC68B89A4FDF24512D3769C4D8B3DED8E52733BDFEC8E220882B85774F59813596491D78E6CEA8ABA7F9E3381987826D82F7E4F00965EEF5030C478435B8F96415187BBF11104413C289274E0318C23109CDDF16861DE438011050AC5F36722F87CE2602DACFFCD87374E7EFB6D1514AD0AD1280D6213043106C872978B47774056BA145D3C204C2834148BE7BF47E1F56B095E4CC44156AB273C9FA7710982201E1E49DDF5140A8720A5B671A09BA28B07C6E74B0ACF9FADF7D1F0D8AD260882787830BAE0232D4825DB361EBBD504411004711E5C8D1B4EEC001F6ED978EC5613044110C479D6E36D2DCCB780991D8D926010044110978002118DB56DBF7F0BB024C1200882202E652818DB2CBAA8C2EA6ABD8F5B55BA2F11044110C467A2A2C50503D56174C18EDD6A82200882380F8A442CB103E16803A2C20E8B3068BB4A822008E2125030C2D1BA1D08942126EC5094411004415C0E1F6D728140C9F6F355C0920483200882B8149E6F7A42AB8DFEC27209FC7C65108FB769A537411004713938536A75AD01819001D1789B664A1104411097238A4D2E166F4338DCB4F1D8AD26C6181FA77AD0DC53822088FB4314DB5A60B50AACEC4B14618C1D1C1387C5459D5B5ACA6B3373D993E7BF09E0F3C56DAF374A024F10C4FD829145385C8740A83240F170AB8907C4195F5A2F6B7EBF7932F17B0C5E3C8FC1EC5C16D4EC16A86A4DA3088320880701A30A516CF5DFBFDB8470788BBAA6EE194962FF7FA9AD8952ABCFB3FF7F20501CF8BC06040226A8B926F8FD45261C0512088220C603148D52F90016974B105EAD9F24E516EDC5306224950983DCE414858943BADD8FC4B76C3E521FF80355602524D32D50F49D3E8A074618EEC7088220C613140AFF72157C3306CCCF1748386E88CAC4219FB734667D26104C189A8395401D56820D588D344194DB20A2703001C108C3FD184110C4E3830FD68580BF02F3DC26AC86EA83396EB38F75EECB044392763DAA6A71A27866DA7AB8D1E7D7EA108D3440101A90CFEF32B3FA281E32138738890341104F15140926182773B30508F80DF0FB8D133969FD54C281C220CB168B043A9A24EDF593F28E1D6111031F6EC2FA3A8B16C41DD07216144BFBA03261C0E8C2FD284110C4CF078A8494DCE9F3A13A2C721588465B0345C1EE167C403ECEA485F87B6384A09B5D0ECBA128B4355CC0C8C79A363310C43D880B16A4D37BA0170E58B4D0617F2FBEFFD42861234110C437610F5601C52293B120166B030EDA068215E0F99A2DA72D3B2D312191B00B66F810FED2A43B7EC0160ABB1E5DFFE2819EEF69C5D2877EB1746CABDA9E6342AA6D27C4DD412CBA0362720FD2F22E64350B8C6217987038E30A34B640100471479C76DBE003BA62F680090784D75BB012DC8285951AAC300B04B6808F34D006A268D968427CD75E0BB61C0BF3CDCF166ED91166F19875666166C9F4BE9D96F79D32260CCF356DDF0E469AF67A6267105A6F4234B103F1940502B36CBE074C30D0FAC5F2C7B3E8C0348F1D2B540E4814088220C605DC67E37460F8CB68E3B44E8C0E2DCA371DE3B174EBCE4CEEB2CF7CB6B30882194614A7861186FB63098220088220088220088220886BF21FFFF1FF01EE5A3B4D309B7B320000000049454E44AE426082, 0, 0)
INSERT [dbo].[tbl_Temp] ([id], [Version], [server], [username], [password], [signoffby], [possition], [phonecontact], [siteid], [note], [contactperson], [nameofbarnch], [addressofbarnch], [DeleteData], [EditServerData], [Depositintput], [EditReportsaffter], [InputDepositInpass], [PriodMake], [Systemconfig], [uploadBeginbalance], [endyearPackdata], [makedepostfromadjamount], [deductdepositamount], [redoInputviry], [uploadpriviousPriod], [imagesign], [nationKA], [status]) VALUES (2, 2, N'DESKTOP-8D4F853\\SQLEXPRESS                                                                                                                                                                                                      ', N'tr2                                                                                                                                                                                                                              ', N'123123                                                                                                                                                                                                                           ', N'Trần Thị Bích Liên                                                                                                                                                                                                               ', N'Trưởng phòng Tài Chính Kế Toán Chi Nhánh Miền Bắc                                                                                                                                                                                ', N'Fax: 04- 33853723                                                                                                                                                                                                                ', 2, N'useradmincanedit                                                                                                                                                                                                                 ', N'Nguyễn Thị Lệ Hằng ĐT: 04-33853725(số nội bộ 267) hay Hoàng Anh Tuấn / Trần Thu Hương (số nội bộ 158/ 256)                                                                                                                       ', N'Chi nhánh Công ty TNHH Nu?c Gi?i Khát Coca-Cola Vi?t Nam t?i Hà N?i(B? ph?n Công n?)                                                                                                                                             ', N'Quốc lộ 1, Duyên Thái, Thường Tín, Hà Nội                                                                                                                                                                                        ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x89504E470D0A1A0A0000000D494844520000018C0000008D0806000001D3157DCD000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000027E149444154785EED9D6956DB58B7F7EF2CEEBA759FAA5448485286C40E8DE8DC806C6CCBB265C9966C2463B9C31D088C4D93A4EAAEBBEAF37DC7F00CC003600E1A80BFD750F67BB62C480824103060C8FEADB5D7918E1B1A69EB7FF669F6F90F8218036AB50F904AB5ED30BF658B525B73AB1D424BC5B373DF5BDD760FC78BA4B807EEE139F2F9E659FDC473FED2F73C2A44B9C9FDE11160F6BDFC78FF18B3740886B16BBF9C48DB8B5CD9F9434CD3E29C171F135EAFCE19857D78F352B1A3D1CFB7DA75D0F52E2746AD03F774F4AC27AC817B7825B35E93336B5DEEF544EABB0E2EB3DB6F912B82AAEE7ADCAAF1C2EBD19DDBC8E3519C3F2493D986B9B902A4930D88F2B587BBC56479EFDA570379FD2A399E8FDA1FE5E5EF89C7FFD825881F4014CFB7A1AE22141D8AE05822A5764EDCC30B4852D3939477C8C109E2A911E66BB0C6D7EC50A876AE29125C2C9E35659697361FA7F35B9DA3B35F7C61B6D8770FC70321DEF9EE7F55921A8EBE64350B62D12DE7BD996C757CAE4452DCBDF2978909E5B3DB4AD5C72CFAD3D4836BFD377DBECA5920C4F3C3D8A352B104A7E20A0A85038F9CB2C6AB99FF82C5E41B9BBD4BFF7854FB70B465AB8AF543CD9B1B93CFF76EF583E6E674585AD8845C6E67BC1CFC7B6839CBF6FB3FDF560F8E611CDDCFE5BE4B022B63F478BC29C1D013F823C2E11FEB287B1288526B3C9F4072F2FB6225497BFD7CBEF3F81F00044110C4C3A1AA5D2EC237004BB7EA526667D44B9B08994C0362E1EAA5119324D51F4F1BFFA128953F413E7F70ADF0F44B94CCC5E6CBE1C7FF81E7CFA3172ED41F13A99FAF7DF723241357778E5CC5BBA9BCF31D79A323942AC3AEACD7AF145B566BDC8A3BA47ECAD27C962EC8D7A8D9CBFB386EC2F49466CFCE0E3B7F72FA9EF3787A3591B679DEE4D6D75B673FA751BB5D77C693A350F87427DD1C382F03CB7265382D68CA23DBD353695BDBD8F967DA23434EB76E75F171FA83245A5A28D8B4438106E4D59E36B65322AE8359FEDC1B3E6A66DD8B51AB0D451FE7984CFC17FF6F3C4E261ADFFCB93C5FF188628D0B33C1E7E6366143EB409CD5B92F3F4DEEBAAFCDF7566177EAE7CEF650885A4DDF44550FEEF46EF3F992361FD6EFCCF39E0CAB91CF224A3C30EBD1F60FCD6423EE90257F893C635C10C5E699B0DE250B4BF9BECF27D085BF8A95958AC0878673254681AAB4353ED20485956E1571131485054F2B15580ED66C45E968A268713CDFC409F19C2C7739EC202C147B7654D80535D701A34891334110044110044110A30117E3A6533899BE0DE1C8961D0E6FD9B262D9EBEBDF1E9F40A6272F4E5490654B482BB71B60FA29498B7B2CB2FEFE5443BFBF74E962345C986C9A1707B11289ED67A9F4D678CDB11F67AAB53FA158FA78ED41A1A450B97041F01F5EAB1FC2E2AC79A13F2C182890675C073171794A8BAB109395739F4B88CD815939BE703102019DE379F55E3A2C1F2DF9FCB1502C7EBC71DFD3D78F9EA4D48060B00605B30B5ABE7D288AC3B1717E3547C3B0DF23CB2E045E0CF7F446E06402343C8EAC9741D72D0EE74CE139CF9B801D90783C3F9FB2370CEBA4F0986774DC1586C12E44F6C767105E46345139494955473F6ACD2E87F960F0D8BF5C007EB5E17844325911CCD2982D921B072A953F05D3BC9D477CC9B35F3FA747C28B8113D8F0D8BF9C0321DE3ABB00CD9DD14D9C7B32A8EAC1377324DC049FEFFCAC104C3084652251827078B81CBB5C1EFD85C038A8B879D44FC61F69FC924EDD7E6EEDD7BC7F6738DF793A810D67136299DBB0E05FBF44402BECFC8DE7B741162D2E2DEED8CB4B35C8AB0757CE901F7BF2F9BB99C836F7DE742E0666ABC2F234631537571824E53A6B24FCD85A350C1C8DCD5E3FB2DE18A8CA2EA8F223CC4376154AA67327CDCBD9F7C3EC0F5A7E38E9F9F462785EC6AF6C396136AEA450EFE3D4CEB550194E731A3C698AE6873B7BAE4E7B72CE772BD9613E9ED31468A7E0EC143E548399391D16D93F7D3DB2850BE31F362DDA437297736D7DDEA18067B5E162E7D550FDCE2EFCA347D78FEFF40E3CCDA5A7BB3926797F9302BB6F2108779BCEEBC5C413496C781F18C6E19DF60BF97C92C7EB4D8E347679B2E0C434F7907848E2F1A6271ABD9FB9B6C415D0851823A2A2C5A1B9A7C44382E309A7630AC418F0A36979893B24297E1E53B84B267E8F0E7CBEABFBA37E6AC26BDF9FE7741B70CB8AB9C532A8F99FA0836F54CCCD0FC71C46852034064A669BFAA06ECA32570449BAD98400F480D06A1BCC520F5495FA9E46822C5B5C4C684138D2B21565D7BE6C09999AEF685161C78EA72C28558EC777DB1282200882200882200882200882209E04B889164E3A77A6E3466B1CCE9F40C3FE4C34F76D3722B8600A535386EDE70AD7EAE7C4A5EAF373057B6ECE18D93A2282F826527CD7E3E47B132C88AC360746BED757F52E779D911521D91212C9E6606D6DB802E4BAA0B3F9974C8845AADFDC3CE24B5289E130595AB1ECE0728926AB12A307534BE7733D1013ED81A2EC8D6C926F60A57412E5AF9713D630AC7EA5BA0795AD43783B9DB95652DF38DFF42C2D9441967FD24523C4E831CD3F859CDA837CFE6E67BB4BF18A676EC680B8F4FD5D04306B43EFE82334DB1FE1E58BC8A5794CBE2618280C027EE34E7F7FE227219B3D8642E1C3BD2ECB40A77837ADC169868CAFC12D9A59F30B0E3EFC051BFA01FCFAAF20484ABBE2BECC14ADF1EFAF27B7607E99195F9C661D113707D3BEA4D3A80EA34B76F1A3E0E2E4B5D5E2851BB950D8F56433BB20441B27B8AD4A46B306C1E0303F03260997B355987E93624E35CCF3730AA698898A4355D9347AFFE75412C475C0F43B8ABCFFA00EF1250B0BDA20EAAAC656ED0852E91A9866472895BAF6699A86572FD2361A1EA3922CCE6F00BFD63CCBB9748A772A6DEBC62EB4B78F40CF8D2E2E229E309806292377615479A946454C28DBD3EF34989FDF38D7942BD5F66D4CB184C72F27641B0D8FD131C2E112ACAD352012B97C79446EE327DC3D9DF87114E5106E93BAF02EC10D337D6F3538DD34F394BCDE39BBB95FBF906D343C16595329B892838433DFFB6236D78271B35C99C44F44ADF2278C3A4FDB5DF0DE5780D30D4C11B3667145F3B3634CBF4EDB68782C08A57E56AB4322D18269372D99DFAF7A4CF3402896EE3691C74DC0F11FDC2CD52CF66C216ED991F03644583350CB74A1523E80DB0E80123F484AC1C0FA716CAE343F538459EFE7AE58D3EC725B8DEEA58EF18A29071FAE3AAF3DFF570256D77408476BA0B2801DEBEE0B4C2727469B9C106FF78558DBF62F54211669415ADC01DC41F8BEB68C23AE090ECC4513D68D76C97F28E6674CE6189F15A354EDF44F036F04D3F29DA6E6FBFD9728BC9C889F05D6B2BC3DB2657167535BD80D2FC61B5A3452B6B9994D082D9721196B406113D73F0E97E6B91F211E0385CA8147C97E7ED23E1666DE9D6F4AE5363A50A97CBED9BF0CBEBF863D99414C3406D88D1B75E669D5388C57D03065229ACC9EDE6892D8E807574C1B6DCE5B04EF9406EBE10AE8F91D673C059DC2FD5AE2A950287CF224A50EC614F7DAA41805EFDF6D80D733DCFC016FCEB47C3EFF4328B865FBBCB94B1D8320BE49A170E091C40EDC754ACFBBE2FD74DEF64D0F15A158B6B45A7DFFCC31F24647783795014A1F4AFC301BDA11DC65C2E1BB06D3B69EA66E4D084D4AA541DC1ECCD39214771E7533E3E533A1EFF325E18FD72950D42A8D5813B747C9ECC35348378CF9A5DD4382B83D7C741B784A704B109FC1E5A37E7F15281537417C01A6420FAF37AEB5B28D207E1AD031426B35A0BD0208E22B9656CAC0F3C3ED8709827011C56D788A7B683CFF2DDEA72D22881B83B338E7660B20C51FEFC8304EDE13A5B6160814078B4B1BB0B494A7ED3A88DB93945BC22C730E2CDDAAB105E742294ABB1F8A34074B81326C142CC0DD3BDC970962F4F0C1BAF07EA6004BF39B0FBE3809A766E7F29D7E886FDAAB7C13B29916A8CC0124DAB6867828303B603AB5034B0B155014AB8FABC46EBA17D3D7E03CA6D33509C5D2513FA359F67AAC0D09B10DB90DCB599136AA9F4510770EDEAC78D32E076A7D51B4705F2C1063FBB01A68C17AB80D91302B232D10853D0847772096D885B4BC0F5A6E1F368B0760181D8D16E91004411004411004411004411004411004411004411004411004411004710EDCEF1BD75960B6129EAF398619C34731D3F6CDA4DE67F66FF7F44AF8D5467F6E769396FA12F70B4E3B37F23DCDD8E84134DC8068B40D49A165A7526D7B8DAFD9617ECB0E87EB4E29C65BF6EA6A0DC4540BE2D28FAFC3509486363565C0F4A47AAD4C28E1B52648CACE3FBFFF1ABBB0431341DC09F8F4CF66F721C26F8392DEB3D1395029DC97BF8B986CF5FDFE3224E5FA0FAD305494BA5D2CEDC1EBC904603A7FB7FA5270896F2AD1761668BD7E9E84C0E2D57B8213C48DC02D0514A5A30556AA108FB6FBC3F518376B1A09C996B0C495609D37AFED1C9170C9EE1E7E8450B076A5639C22CB352E1E6900AE2377AB086274E03665C904530765D7666A3192B5E449A122F0810A6B7A55AEFC3EBCB1FDCB4538FCF017BCF7E620BE5EBB56820449AAF7A574FDD16D9E438C39A6F9A720A7BBC0CCBE8BEDCAE46C4B98F36A20C52BDF7DA2EBBAC5C5A235E6187FC2BBE92CBC9DCE5C99D13DCE373DCB5C95A94583B28C10A3A35CFA1324A61277BD7F9F9269F533D9D6779FEAA66971C59205871FFF8205AE08DC7CF14AC708F90D6DFEBD067E7F819A51C4ED318C63414A7521A7F6EEA59B332E553CF3B39B207F2718C79D955AD691E3186FA773D7728C254EB1D1DC5382B839F9FCB19012F7019DC3ADBA1744B1DC4FCB5BDF548D9CBE6BEFEC7D84FDC34FF0E65506C2D1E2E034A096D48A47551B17C636DEFB6236CF53B236E296E8FA3164940EE0C6966ED5BD81BBA42ECC6F7ED3319272D3CEEB7B10592FC1CB170A144A1D90956D4867AA7D395B3D51B5F31B58F2BCEA79F53C0158BA5504F1E3E8FA47164B1C3F6862B685B90253818B8172DEB0B485991CA8AAA5A9EA4EE58FD719080486DDB5ABA12268F93608C9C2B92613CFEBDCFCBCE4380BFBBC90CF8FA6278DF889D0D463D8D8F8F0E0D90A45B16AA3B9A70E19750F8CC2EE3F1BC6AE73937B2665EED5CBF4996368C55DBB58E94170B976C13104B1E87CA6681C809EDBA36921C4F5D1B2C7EC49FCB04A710A6B4E690B0B39E76636CD03414A3641518737B451D873EA2799634C4EA4014B3C578D5D3B57DC8395AF1C23CA9BDC7AB80866D902315E8102EDFC4A5C1735DB0559EE8C85532051166778FE504033F60F97978A206787CD1FB3D6E54AB5E15EDF93CF65EEF58B0C6089E78E636CEEC3AC2FC3E289F3A3DB117EF3FFB02C96779CCF12C49514363F809ADD1F1BA740D031DEBECDC15BAF0A49F9F36878ADD9E5B69A07678EF1E2F7D4996368857DBBD63A84694FFAD2BD078BE58ED66877A8678AB89A4AF52F2814C6A3F9F425E81833DE0D989F31CE358B50315A3B47678EF1C72BF9CC31C2E192DDB08EC0F33A097CF4E2FC29B3BC07850A35A3882B28D7FED2D44C6F2C37B0F47A546ED65782E929ED9C63E86697338A3DE7A9EF38C6A472E6182B4B9ADDDA3E86C9DF45D6943AEF188D5A4F43734F09E27270DE9394DA032CDDAAB1C33B9DABF8DEE6CF39063A85C99C038FB157EACD4B19B0C4F3E0B266D799633CFF350181807AE61895CA8147DF688F7D6CA1EB5D0EAD583CD2CCC2919D88ED40846F4022B1FDCC7D0B7197E0A09D94DC1F6BA740BC5E9DF379CF37A58AE69E6DD6863BD1A2434C79868EE1F7AB1ECF6402AA8D2378F17BD271027F50FD5F2C65B9CD9A8BE3D78472F61129F6FA6A66DF5E8FB607B1A805B9CC21989B4780CE417B89DC33BAF1010CE3E3D8372BD031DEFB2E3A468DC519788C0E31FD260D1E8FCC79994DFD21424EB760EA8F2CAC04D47FFC410D0AA51E18E6C30EE8A9B2C5C9A2C5E555AB2F0A3BF66AA809FEE53A24855D308B07407B8B8C01383B565686DD9DE3CEACD7E4667CE72708AAB93DA8B801343A86071D8395939322F7EA650A14A5657BDE64FACF7E89C206730ABD78BF4DA878BCE9414710E36D4D88B5EDF55073105D6D4232BA0D1BDA2EE06AC2789C9460EC48A5BB800B8DDCD3B1061D63FEFD79C74045700F9DE01B1D034B1CE47BC5E20D16743B7F1B6B3E9D84D7AB77DAB180491E9C0D35A5B626A75A7638DAB2B9D912248416948A1D40074173DF4E8C2B66E91368F9C3B1EB9AFD16B3AC2935E733CF1C03BB5AF5CDF38EF17A42721D23CABD792500C70DD75B60D324BF39BAA9F2E80098DDC4B178A3BFC49506CB5C09C2A112C8521B1CE760EFB9E9F25EE28128540E3CA9E41E6BCF1E3C9A0B878E31F3458CE18C7A573BE71C03036D47395EC63D13FFC59F4D37779EE4AA752365C435E46892D8D092C296BDB4B039F0BDCB837FB1C4E28226944BFB800EE2BE9D78CC94B670C6ECE3EAC7C7E07BC6F779A62C3A4673BB77CE31DE4C66CFC631BE049FDC0B8B068B39DA7D74926894DDECCC30750EDAE9CD2FB3363F3A809A69DBC115D39E9B3506BEE90D585928402A51077C0DA7C1F3FCF797DB128F10EC9E4DCB9F9B208F05AF47E7BE1CC7C8E73BE7D2F2F0811AE7F1640095C5AD3A0706C222BBB1E3D11AB0A73ECCCF1BF07ED680C5F94D58E28A100C94201AA9829ADD06740C556D6BE82C7172829F834D165B64EE6969EA28C1D1EF2F1D4356EA363EFDDD53C731E67C3A60E95611C4F5C9AA9F9B1F8F09748CF7EFE4B39E25740CDDFCDCCB33748C2CF8FDF484277E10C338EAEBC6D1D953F731E18C7C4FE3C8B6E838432EBF7B6E12E046A10BA1509D161D113F8E22F78039C7A30ABA4F996531C6EB5729C0C13B540A39733EAD0E35A1881BE1A4D1943F776F3E36269F8BDCCB1729F07A4567206DD31C2E6925885B91578F346C4AB9A78F8EE7CC319E3F131C67E0C31B273476408C0459E982AE1F3FDA9BC9E7933CAF5FCAF06222FECFE4E41AF03C65112446404ADC01497A3C23DD97F1F299D0FFED9718F87CC9B19E224F3C1264B9CB25C59D47D91BF535A81CEE2141DC0E9CEA10169E866310C4C8E0458B0B855BE41804F1253CDFEAAFAC9C4F3C46103F3DD158DB0EF3E7535C12C44FCFDA5A1DD6E3ED4739E24D10774638D284B878B3853A04F16489093B369A7B4A1004120C566D34F79420086469A564A3B9A70441203CDFD066E765C0E59D6E15411098063F1C6E8E65C266827830502942ABA527B77E616E2E2BFCFEAB7061575682B836CB2B652725A47BFAA809AE9BC2CC5CC67EFE5B14D4CC163906717392628B3946EB51AF8916E526175A2FF7DFBDD5606129DFE738DA9298B82592D4D616974A8F2ECE884B4D8FA8B4353E521FCC2D9740D177C01FA74C20C40891D2DB9092DA639FAF56529B1E8539434C68D94BFE3AAC0B751099634BCC49DCB710C468595828C16AA87EF2F54EA6E380CA1C22A3B4FA6B7C1D6289B6935293BA98897B636DB50EA1B512C8C987DD44057709C2549BA2B86387C375660D509952A85F641824887B0555633558614FE5FB9D5C8801B42475B458DCB2FDCC4173F90E144BBDBEAAD2DE11C498804EB1B2588368B435C06379841B9B9C6E99552C1F6966E9C81693BB764CC018671BF2F9D1FE2C821839D89CC19B54CB7781E7B77017A2819CB66C45D965B6D7C7D7449159D4E2585CE2181E8B7297C3240BA70E80A6EB9D7E3C69D942D21A84E3DB90604EC09C8229C2511FB71E767F24413C3ED01114C9D21CC7C8EC4142D883B5600B82C126847966E11608710B84440722AC4CA5F741D57AA0EBFB60567A679B2B3EA64D6908822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008627CF173054F60D1E4B074AB460AA605C7F47BDC1D7D3F4110C45852500F3CBADEE55466B2683926499696DBD80749DA8664A20DEBEB0DE0C30D58E36B105EAF4324C28C9D8771CF82F5364458C987AA200A2D90150B360A1D276336EE7CE3FE987B818F573C7CBCD67F33A9C3CBDFD2105C326D140EF7E55B23CB96C0AF35617E6E137CEF74F8FDB728F8DEEA7D120E82209E1CAABAEB51D58E56328F2193EE40226A41843D0023ABCD41345CB7D349CBCEE53B7DDCB70305E4D464B979663C5F3B6798EFF76B43B148A45A278B9C0973730624D35B9094EB77BA1F096EBC532CEDF597164A108E6FA158C0B3FF0E41345CEDC7F9DB6DCF26C59B1E4DEDC2AC6F0324D93A492B3B7FA7656BF0F259020563A4A244100471EF48F15D8FA274B48CB207EB9116C4636D10C43A6432FB76A978D437F23DCD892CA4DD3B6B1D3B7B6B4A6D2D296D9D040255585ED681E7CD3B110E143345A9DBEB9112587BB8FBC2218B849A100B57ED281336F76D37020583455AFFCBC4D0F9DD7167EC1813D8D04A997D7FFDD6DF4F100471AFE4F30742B9C22207261049C1622DEB3A9627281A281EEEDB1E0C8C3016E7CD93207BC8F2AB26FBDD2A23150EC3B0B450A834300ABB70F8E14FA8543F807FB90A3EAF660702A37DA04B52438B471A8358A40E78EC561304418C27B86553B1FC51334B1F2111DF0351D881BCD63BC9B3C8C1D9D2E90E2387DB8042C1EC64656613456324C221CB358E0986BDBA5A8246BBCB04E32FA8D50FE1DDB40A539E38F897AA7D9F4F1DC9FF0305221AA90F7CEF724C2CEA7DDA7C9D2088B10445A25CFE4BCB6F1C4252DC0559DA67027134148847B6E79FA2B6B5807F73100A9880C76EF58DD0758B4BA5B76C295D87BDEE111C7EFC139ADB9F809BDF84579331261A317B71F6F6E30CD8F5140C18F6E25C11B0A4AE288220C68A42E193A758FCA865944390921DC8E70F5C9178FC9BC2A2500403C541C05F0449A9DD58344C732818F566178E3EFE8F6395AD63F0F9F230F13CC284A3786BC1F0FB0B9E85D9627F6E7A03961714E0F93C75451104311E18C6B1B0B9F91192890EA4929D2723125F238A652D18DC1C70737990D2B57E5CFAB1194D6A61D7536F74FB82D080F6EE311C7CF81F38F8F8176C9AC7F0C79B2CFCF2CB2A138E9CCD472F170C9C5D85E69E7E139E57B9254EB1DFBC8802BF9AEBB3F327772D08827844A8EA27F6F0EAB168A2076AB6074C30FA281CEECB4F161C1758982B0C42A122E078845B7D2D54DDE29272D366C604E313EC743E41D1EC412CDA86C98934FCF6EB2A846326FBDEF620ADB4FB8AD2D64EC71D54B5A1CDBC97071BBA054C34BEFB7331A2F0BC890EF8B51C8B2E54EA8A2208E261C8E78F858D8D0F20081D90241CB87EFA22F125F800C701E4195F81451938F3E8FA03C9AA626942AC09DC7C0E44A931C8E9BBF666B137C075136F26B3100C560792D2AEE05458A3D8D352C916ACAC6C80593DF82791DC84296F0A8464C11645FD9B22C0F33AB7C6E76DCF1FB10B5D514666FB997B4810047177A03068399C0ADB0326183F9D507C8928D6B8B550D19E9FC93BB38FE2F16F774DE58D8EA017F621996E40426C83986E0CF279EBEC412ECA4D8E0986FDE695026F5E2BE7A6D5CA6A8D4B265B76787D134AD503989DCEC3F27CE94AC1989F4FD96BFC0644C561D756DEB0840D6DF76471360D7A6EAF5F50C773561A41108F9C7CF640C8647A90CD7441D58E7F6AA13885E70B1E51ACF667BC06B092D9F9AE298C3A14B5A349520B524C28360A9D9352E5E86FBDD019E4F23B609ADDB3F74F4ECADCAB1769261819C012CFDD979C2E2CDDDCB3D74225D0CD0E8456B620B85CB3313794FB960B447993F34EA56D49AA80AEEFFEBD615827E56A0F850212F1CAC0C87768009C2088D1824291530F2199D8034D3D38C992509C23CA4482E334DBEBCDA060380F618C26CCD22184029B9092AA2786D1D130C589F30146A9D4B54BE52E98B52F04E339138C09C57EF58209062BF1DC7DC9110CD5D8B5E76755508D3DF033C198F12983F5F56F4FED45315BE78B7D261A904A554E8AA59DBFCB95DE404C94A158FE1CD9100441DC1A1CB8CE6B872026B621CF840285C37D89F802148C9850B6DF7A5488252A902BECC3FCBC0E217FE124295F5CE0576B7639140C73AB0B78EC563B82F17242B6275FC8E0949708062EF22BD50F6165A90ADEB73244222D3B1AFDFEC077225175C62B70DD8751B0A0B1BD0F850A7545110431022A953F05D3FC00E9F49E23143FC38CA7DB702A18F3B306FCFADF3178F54A1884FCC56FB6E0512458646137DA871704E3D5449A4518691661A42F0846385CB2D7420634768E617DBD056F3DD7130C0405A258DEEBE78D06E0FA0FB79A2008E266542A9F3CD5DA2750941E7BA81C9F3023A1B8062818D3539AFD762A07AF5F09303F63D8B3B3DF1E8CC66EA88C6A41CB3A642DFDCF6B544E05C3F34AB920183C6F726B41C35E59D6A0B97B0C91F53ABC7A2180106FD9987DD77DDBA5549858D4B70EA058DA867A9DA24482206E8969FE2968EA01A8992E546B1FFBB852DB7D89B8028F47F5BCF5E4FECD4463E07BB701281EDF130CDDEC7205B30758BA550E38C8FDFA85CC220C09B0FC72D05B144D6E7949B3F9B50D685A1F201E6FC3F35F13100EE3C0F7B705C3340F844A895DD3CA1EA070B8D5C48890A45DCFD769F2D1C6217126418C1C148A52E913A4A57D16557C6251C59FD402BD215EAFCEF9BC06F87CBA8DC76EF539B06BC828F6FA9ABA7DA16BC8E30AC6F41F194730F0DC7D89451879CD33991848720DB65A2CC2886C31C110616222690702C305794B6B99736B2B8A454B53D9CF29977B34C0FD030CF75FC13C6743338C9E66E8BDBEA1776D344D39B4C36B4D3B12690EF8D5A693863F29EE802C59A048964682413C49CAE58F5A46EE8122F74EF2344E716B502470111F138D6F0A46ADD6E58AE69E6D96F6008FDD6A071488290F138C2905B03C150C8C2EA6A7D2F69BC93864D4266C567A202BBBF062220993CFC5C14A40FBDB1F504F666692E07C11C330BAB059DC4551A2EBEA12670F71DC991117438A4EE95ADCD298F59371CB1685DD41C05F8760A80ED1D83624040BD4EC3E30C100140E556622221F73CE9E2CAC7C8A696F08E202984E5C91BBA01B1FFA74D38F86592612B3BE22BCF719361EBBD5E7306B16A76ABB7665AB73A9604CBF4EDBEF588481E5A960783DAC9E09C6DBA934289936138BD640CEB4FEDFD49BCCE05FFF198649261CDE7732E4362DD0F49D7FA46C0B30BA70BEF427211E6F7AC468933DC4D9FF57E968AAB2D757955D3B166ED9D150D35E9AAD0C96E7AAB8D811FC4B2688891D48A5B68109862646996830FB1C55903F1084033A433E7F00B1580B986890588C9059AFC904A30033BE22138CCB930662CB54DFEC42B97671D11C0A840785E24D1A9CF20BC1783191B65F4EA49DD4E73C5FED633DCF578477EFE493972F1220A51B10131A9092EA27F9FCD3892A70E123EE4A880FF26189EB593A7D1CEC470B2ED5ECE0720D024B155859342111DF0635B30765B30B8E70E098028B229C3DDF99A8B85F4B10C455E0EE76B98D2348A6F7492CEE001489F99922CCBFFFB66014CB1D2DA7B7CF2DD83B056745BD9E48D993CF45189643C1C0C1EF67FF15658221C0FC7CE1C2803AEE659ECBEF432A5DB7F1C1EA568F3DB86739460598C491593F9DAADB68C958DD0E06B798D507A1501D22D116AC471B4C0C9AA0691D2814510C2C470C1C1BD34DB708E2D1522C1F69A9E41E88E9CE00538EBBD5C408194618C56F46182812C5F29E5DAC74BE211822F7F2B968BF7999062CF1DCA99F8C7213BF8471CAEE80E32EAEEF9055D6824E6FB346C0C3A7FAC0563CA647413B158254BA69A3AD054BF6CAE2D016678DC1DCBB022CCE19105DAF405A6A38DBC66214F1A5FD484247822046008A8592DD07398BFB53746810F48E188E6118F0FEEDE5631828125A7ECFAED6F72F8C5F201851382BBC272EAEF4F6BC8C7BD0DCD373E083351EAB8392B54E14D5D246D9F58251802CB2873733DCA90F4D55DA5A26DDEE67E4B61D09971D5BE60C7B69AE3498F31ACE38C1F2421122912A48E9260A411FC500A3892F8DBA880862CCC05DEF721B5DC8E5BBD40575C7E0CCA877D31B2CC2B87C9694AA77B9ACBA03B5C6E59180D7AB726F5E29F61FAF3280259EBB2F5D899CB5844CD68250A00CDC6C1EFC2B06F0C19A1D8B0E6D892BD87373BA63EF9DD2706C71BE602FCD17D943BF6647C3553B18283986C7D3D3FA60CAA3C3DB691D66670C9867D140D06F422C5283ACBC0D281A281EA711851355900810C4E304C5229DEE415AB66C7C58B9D5C41DE1F5E8DCDBA93C4C4FE56C3C76AB1DB06B053742929536A8EAE5A939F8408DF3BECDD8EFBD79C0F25B33ADAE03A6598F465944E01A7EF7E2228B8066CFDB69D4706AA7D1C497869B345D67773F82201E29BA7ECC65B423C8AABD138316E3DD0B5E8FCABD9DD6C0E79599609C8F0E502464A565CB4AE3BB82110A6ED9DE775998F3E9762070F9C0394110C4C8C06481CCD883A903281C6E3571C7E0F4D799E90D78EF95C13795EEFB7CD259AB5C372D4ECB59F666C9023C76ABCF110A35B4E0B209C1606980C76E354110C4DD8002A11B47901477C1308EFA85028D5BDC17B31E9D7B3F9DB7FF789D8437AF93B6677238CB09534D30A1E867B3DB97EE43B1B6567DC644E27F43C1128402A57E3058A788902088BB27AF1E69499145162416F70E0AC68B89A4FDF24512D3769C4D8B3DED8E52733BDFEC8E220882B85774F59813596491D78E6CEA8ABA7F9E3381987826D82F7E4F00965EEF5030C478435B8F96415187BBF11104413C289274E0318C23109CDDF16861DE438011050AC5F36722F87CE2602DACFFCD87374E7EFB6D1514AD0AD1280D6213043106C872978B47774056BA145D3C204C2834148BE7BF47E1F56B095E4CC44156AB273C9FA7710982201E1E49DDF5140A8720A5B671A09BA28B07C6E74B0ACF9FADF7D1F0D8AD260882787830BAE0232D4825DB361EBBD504411004711E5C8D1B4EEC001F6ED978EC5613044110C479D6E36D2DCCB780991D8D926010044110978002118DB56DBF7F0BB024C1200882202E652818DB2CBAA8C2EA6ABD8F5B55BA2F11044110C467A2A2C50503D56174C18EDD6A82200882380F8A442CB103E16803A2C20E8B3068BB4A822008E2125030C2D1BA1D08942126EC5094411004415C0E1F6D728140C9F6F355C0920483200882B8149E6F7A42AB8DFEC27209FC7C65108FB769A537411004713938536A75AD01819001D1789B664A1104411097238A4D2E166F4338DCB4F1D8AD26C6181FA77AD0DC53822088FB4314DB5A60B50AACEC4B14618C1D1C1387C5459D5B5ACA6B3373D993E7BF09E0F3C56DAF374A024F10C4FD829145385C8740A83240F170AB8907C4195F5A2F6B7EBF7932F17B0C5E3C8FC1EC5C16D4EC16A86A4DA3088320880701A30A516CF5DFBFDB8470788BBAA6EE194962FF7FA9AD8952ABCFB3FF7F20501CF8BC06040226A8B926F8FD45261C0512088220C603148D52F90016974B105EAD9F24E516EDC5306224950983DCE414858943BADD8FC4B76C3E521FF80355602524D32D50F49D3E8A074618EEC7088220C613140AFF72157C3306CCCF1748386E88CAC4219FB734667D26104C189A8395401D56820D588D344194DB20A2703001C108C3FD184110C4E3830FD68580BF02F3DC26AC86EA83396EB38F75EECB044392763DAA6A71A27866DA7AB8D1E7D7EA108D3440101A90CFEF32B3FA281E32138738890341104F15140926182773B30508F80DF0FB8D133969FD54C281C220CB168B043A9A24EDF593F28E1D6111031F6EC2FA3A8B16C41DD07216144BFBA03261C0E8C2FD284110C4CF078A8494DCE9F3A13A2C721588465B0345C1EE167C403ECEA485F87B6384A09B5D0ECBA128B4355CC0C8C79A363310C43D880B16A4D37BA0170E58B4D0617F2FBEFFD42861234110C437610F5601C52293B120166B030EDA068215E0F99A2DA72D3B2D312191B00B66F810FED2A43B7EC0160ABB1E5DFFE2819EEF69C5D2877EB1746CABDA9E6342AA6D27C4DD412CBA0362720FD2F22E64350B8C6217987038E30A34B640100471479C76DBE003BA62F680090784D75BB012DC8285951AAC300B04B6808F34D006A268D968427CD75E0BB61C0BF3CDCF166ED91166F19875666166C9F4BE9D96F79D32260CCF356DDF0E469AF67A6267105A6F4234B103F1940502B36CBE074C30D0FAC5F2C7B3E8C0348F1D2B540E4814088220C605DC67E37460F8CB68E3B44E8C0E2DCA371DE3B174EBCE4CEEB2CF7CB6B30882194614A7861186FB63098220088220088220088220886BF21FFFF1FF01EE5A3B4D309B7B320000000049454E44AE426082, 0, 0)
INSERT [dbo].[tbl_Temp] ([id], [Version], [server], [username], [password], [signoffby], [possition], [phonecontact], [siteid], [note], [contactperson], [nameofbarnch], [addressofbarnch], [DeleteData], [EditServerData], [Depositintput], [EditReportsaffter], [InputDepositInpass], [PriodMake], [Systemconfig], [uploadBeginbalance], [endyearPackdata], [makedepostfromadjamount], [deductdepositamount], [redoInputviry], [uploadpriviousPriod], [imagesign], [nationKA], [status]) VALUES (3, 3, N'DESKTOP-8D4F853\\SQLEXPRESS                                                                                                                                                                                                      ', N'tr3                                                                                                                                                                                                                              ', N'123123                                                                                                                                                                                                                           ', N'Trần Thị Bích Liên                                                                                                                                                                                                               ', N'Trưởng phòng Tài Chính Kế Toán Chi Nhánh Miền Bắc                                                                                                                                                                                ', N'Fax: 04- 33853723                                                                                                                                                                                                                ', 3, N'useronly                                                                                                                                                                                                                         ', N'Nguyễn Thị Lệ Hằng ĐT: 04-33853725(số nội bộ 267) hay Hoàng Anh Tuấn / Trần Thu Hương (số nội bộ 158/ 256)                                                                                                                       ', N'Chi nhánh Công ty TNHH Nu?c Gi?i Khát Coca-Cola Vi?t Nam t?i Hà N?i(B? ph?n Công n?)                                                                                                                                             ', N'Quốc lộ 1, Duyên Thái, Thường Tín, Hà Nội                                                                                                                                                                                        ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x89504E470D0A1A0A0000000D494844520000018C0000008D0806000001D3157DCD000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000027E149444154785EED9D6956DB58B7F7EF2CEEBA759FAA5448485286C40E8DE8DC806C6CCBB265C9966C2463B9C31D088C4D93A4EAAEBBEAF37DC7F00CC003600E1A80BFD750F67BB62C480824103060C8FEADB5D7918E1B1A69EB7FF669F6F90F8218036AB50F904AB5ED30BF658B525B73AB1D424BC5B373DF5BDD760FC78BA4B807EEE139F2F9E659FDC473FED2F73C2A44B9C9FDE11160F6BDFC78FF18B3740886B16BBF9C48DB8B5CD9F9434CD3E29C171F135EAFCE19857D78F352B1A3D1CFB7DA75D0F52E2746AD03F774F4AC27AC817B7825B35E93336B5DEEF544EABB0E2EB3DB6F912B82AAEE7ADCAAF1C2EBD19DDBC8E3519C3F2493D986B9B902A4930D88F2B587BBC56479EFDA570379FD2A399E8FDA1FE5E5EF89C7FFD825881F4014CFB7A1AE22141D8AE05822A5764EDCC30B4852D3939477C8C109E2A911E66BB0C6D7EC50A876AE29125C2C9E35659697361FA7F35B9DA3B35F7C61B6D8770FC70321DEF9EE7F55921A8EBE64350B62D12DE7BD996C757CAE4452DCBDF2978909E5B3DB4AD5C72CFAD3D4836BFD377DBECA5920C4F3C3D8A352B104A7E20A0A85038F9CB2C6AB99FF82C5E41B9BBD4BFF7854FB70B465AB8AF543CD9B1B93CFF76EF583E6E674585AD8845C6E67BC1CFC7B6839CBF6FB3FDF560F8E611CDDCFE5BE4B022B63F478BC29C1D013F823C2E11FEB287B1288526B3C9F4072F2FB6225497BFD7CBEF3F81F00044110C4C3A1AA5D2EC237004BB7EA526667D44B9B08994C0362E1EAA5119324D51F4F1BFFA128953F413E7F70ADF0F44B94CCC5E6CBE1C7FF81E7CFA3172ED41F13A99FAF7DF723241357778E5CC5BBA9BCF31D79A323942AC3AEACD7AF145B566BDC8A3BA47ECAD27C962EC8D7A8D9CBFB386EC2F49466CFCE0E3B7F72FA9EF3787A3591B679DEE4D6D75B673FA751BB5D77C693A350F87427DD1C382F03CB7265382D68CA23DBD353695BDBD8F967DA23434EB76E75F171FA83245A5A28D8B4438106E4D59E36B65322AE8359FEDC1B3E6A66DD8B51AB0D451FE7984CFC17FF6F3C4E261ADFFCB93C5FF188628D0B33C1E7E6366143EB409CD5B92F3F4DEEBAAFCDF7566177EAE7CEF650885A4DDF44550FEEF46EF3F992361FD6EFCCF39E0CAB91CF224A3C30EBD1F60FCD6423EE90257F893C635C10C5E699B0DE250B4BF9BECF27D085BF8A95958AC0878673254681AAB4353ED20485956E1571131485054F2B15580ED66C45E968A268713CDFC409F19C2C7739EC202C147B7654D80535D701A34891334110044110044110A30117E3A6533899BE0DE1C8961D0E6FD9B262D9EBEBDF1E9F40A6272F4E5490654B482BB71B60FA29498B7B2CB2FEFE5443BFBF74E962345C986C9A1707B11289ED67A9F4D678CDB11F67AAB53FA158FA78ED41A1A450B97041F01F5EAB1FC2E2AC79A13F2C182890675C073171794A8BAB109395739F4B88CD815939BE703102019DE379F55E3A2C1F2DF9FCB1502C7EBC71DFD3D78F9EA4D48060B00605B30B5ABE7D288AC3B1717E3547C3B0DF23CB2E045E0CF7F446E06402343C8EAC9741D72D0EE74CE139CF9B801D90783C3F9FB2370CEBA4F0986774DC1586C12E44F6C767105E46345139494955473F6ACD2E87F960F0D8BF5C007EB5E17844325911CCD2982D921B072A953F05D3BC9D477CC9B35F3FA747C28B8113D8F0D8BF9C0321DE3ABB00CD9DD14D9C7B32A8EAC1377324DC049FEFFCAC104C3084652251827078B81CBB5C1EFD85C038A8B879D44FC61F69FC924EDD7E6EEDD7BC7F6738DF793A810D67136299DBB0E05FBF44402BECFC8DE7B741162D2E2DEED8CB4B35C8AB0757CE901F7BF2F9BB99C836F7DE742E0666ABC2F234631537571824E53A6B24FCD85A350C1C8DCD5E3FB2DE18A8CA2EA8F223CC4376154AA67327CDCBD9F7C3EC0F5A7E38E9F9F462785EC6AF6C396136AEA450EFE3D4CEB550194E731A3C698AE6873B7BAE4E7B72CE772BD9613E9ED31468A7E0EC143E548399391D16D93F7D3DB2850BE31F362DDA437297736D7DDEA18067B5E162E7D550FDCE2EFCA347D78FEFF40E3CCDA5A7BB3926797F9302BB6F2108779BCEEBC5C413496C781F18C6E19DF60BF97C92C7EB4D8E347679B2E0C434F7907848E2F1A6271ABD9FB9B6C415D0851823A2A2C5A1B9A7C44382E309A7630AC418F0A36979893B24297E1E53B84B267E8F0E7CBEABFBA37E6AC26BDF9FE7741B70CB8AB9C532A8F99FA0836F54CCCD0FC71C46852034064A669BFAA06ECA32570449BAD98400F480D06A1BCC520F5495FA9E46822C5B5C4C684138D2B21565D7BE6C09999AEF685161C78EA72C28558EC777DB1282200882200882200882200882209E04B889164E3A77A6E3466B1CCE9F40C3FE4C34F76D3722B8600A535386EDE70AD7EAE7C4A5EAF373057B6ECE18D93A2282F826527CD7E3E47B132C88AC360746BED757F52E779D911521D91212C9E6606D6DB802E4BAA0B3F9974C8845AADFDC3CE24B5289E130595AB1ECE0728926AB12A307534BE7733D1013ED81A2EC8D6C926F60A57412E5AF9713D630AC7EA5BA0795AD43783B9DB95652DF38DFF42C2D9441967FD24523C4E831CD3F859CDA837CFE6E67BB4BF18A676EC680B8F4FD5D04306B43EFE82334DB1FE1E58BC8A5794CBE2618280C027EE34E7F7FE227219B3D8642E1C3BD2ECB40A77837ADC169868CAFC12D9A59F30B0E3EFC051BFA01FCFAAF20484ABBE2BECC14ADF1EFAF27B7607E99195F9C661D113707D3BEA4D3A80EA34B76F1A3E0E2E4B5D5E2851BB950D8F56433BB20441B27B8AD4A46B306C1E0303F03260997B355987E93624E35CCF3730AA698898A4355D9347AFFE75412C475C0F43B8ABCFFA00EF1250B0BDA20EAAAC656ED0852E91A9866472895BAF6699A86572FD2361A1EA3922CCE6F00BFD63CCBB9748A772A6DEBC62EB4B78F40CF8D2E2E229E309806292377615479A946454C28DBD3EF34989FDF38D7942BD5F66D4CB184C72F27641B0D8FD131C2E112ACAD352012B97C79446EE327DC3D9DF87114E5106E93BAF02EC10D337D6F3538DD34F394BCDE39BBB95FBF906D343C16595329B892838433DFFB6236D78271B35C99C44F44ADF2278C3A4FDB5DF0DE5780D30D4C11B3667145F3B3634CBF4EDB68782C08A57E56AB4322D18269372D99DFAF7A4CF3402896EE3691C74DC0F11FDC2CD52CF66C216ED991F03644583350CB74A1523E80DB0E80123F484AC1C0FA716CAE343F538459EFE7AE58D3EC725B8DEEA58EF18A29071FAE3AAF3DFF570256D77408476BA0B2801DEBEE0B4C2727469B9C106FF78558DBF62F54211669415ADC01DC41F8BEB68C23AE090ECC4513D68D76C97F28E6674CE6189F15A354EDF44F036F04D3F29DA6E6FBFD9728BC9C889F05D6B2BC3DB2657167535BD80D2FC61B5A3452B6B9994D082D9721196B406113D73F0E97E6B91F211E0385CA8147C97E7ED23E1666DE9D6F4AE5363A50A97CBED9BF0CBEBF863D99414C3406D88D1B75E669D5388C57D03065229ACC9EDE6892D8E807574C1B6DCE5B04EF9406EBE10AE8F91D673C059DC2FD5AE2A950287CF224A50EC614F7DAA41805EFDF6D80D733DCFC016FCEB47C3EFF4328B865FBBCB94B1D8320BE49A170E091C40EDC754ACFBBE2FD74DEF64D0F15A158B6B45A7DFFCC31F24647783795014A1F4AFC301BDA11DC65C2E1BB06D3B69EA66E4D084D4AA541DC1ECCD39214771E7533E3E533A1EFF325E18FD72950D42A8D5813B747C9ECC35348378CF9A5DD4382B83D7C741B784A704B109FC1E5A37E7F15281537417C01A6420FAF37AEB5B28D207E1AD031426B35A0BD0208E22B9656CAC0F3C3ED8709827011C56D788A7B683CFF2DDEA72D22881B83B338E7660B20C51FEFC8304EDE13A5B6160814078B4B1BB0B494A7ED3A88DB93945BC22C730E2CDDAAB105E742294ABB1F8A34074B81326C142CC0DD3BDC970962F4F0C1BAF07EA6004BF39B0FBE3809A766E7F29D7E886FDAAB7C13B29916A8CC0124DAB6867828303B603AB5034B0B155014AB8FABC46EBA17D3D7E03CA6D33509C5D2513FA359F67AAC0D09B10DB90DCB599136AA9F4510770EDEAC78D32E076A7D51B4705F2C1063FBB01A68C17AB80D91302B232D10853D0847772096D885B4BC0F5A6E1F368B0760181D8D16E91004411004411004411004411004411004411004411004411004411004710EDCEF1BD75960B6129EAF398619C34731D3F6CDA4DE67F66FF7F44AF8D5467F6E769396FA12F70B4E3B37F23DCDD8E84134DC8068B40D49A165A7526D7B8DAFD9617ECB0E87EB4E29C65BF6EA6A0DC4540BE2D28FAFC3509486363565C0F4A47AAD4C28E1B52648CACE3FBFFF1ABBB0431341DC09F8F4CF66F721C26F8392DEB3D1395029DC97BF8B986CF5FDFE3224E5FA0FAD305494BA5D2CEDC1EBC904603A7FB7FA5270896F2AD1761668BD7E9E84C0E2D57B8213C48DC02D0514A5A30556AA108FB6FBC3F518376B1A09C996B0C495609D37AFED1C9170C9EE1E7E8450B076A5639C22CB352E1E6900AE2377AB086274E03665C904530765D7666A3192B5E449A122F0810A6B7A55AEFC3EBCB1FDCB4538FCF017BCF7E620BE5EBB56820449AAF7A574FDD16D9E438C39A6F9A720A7BBC0CCBE8BEDCAE46C4B98F36A20C52BDF7DA2EBBAC5C5A235E6187FC2BBE92CBC9DCE5C99D13DCE373DCB5C95A94583B28C10A3A35CFA1324A61277BD7F9F9269F533D9D6779FEAA66971C59205871FFF8205AE08DC7CF14AC708F90D6DFEBD067E7F819A51C4ED318C63414A7521A7F6EEA59B332E553CF3B39B207F2718C79D955AD691E3186FA773D7728C254EB1D1DC5382B839F9FCB19012F7019DC3ADBA1744B1DC4FCB5BDF548D9CBE6BEFEC7D84FDC34FF0E65506C2D1E2E034A096D48A47551B17C636DEFB6236CF53B236E296E8FA3164940EE0C6966ED5BD81BBA42ECC6F7ED3319272D3CEEB7B10592FC1CB170A144A1D90956D4867AA7D395B3D51B5F31B58F2BCEA79F53C0158BA5504F1E3E8FA47164B1C3F6862B685B90253818B8172DEB0B485991CA8AAA5A9EA4EE58FD719080486DDB5ABA12268F93608C9C2B92613CFEBDCFCBCE4380BFBBC90CF8FA6278DF889D0D463D8D8F8F0E0D90A45B16AA3B9A70E19750F8CC2EE3F1BC6AE73937B2665EED5CBF4996368C55DBB58E94170B976C13104B1E87CA6681C809EDBA36921C4F5D1B2C7EC49FCB04A710A6B4E690B0B39E76636CD03414A3641518737B451D873EA2799634C4EA4014B3C578D5D3B57DC8395AF1C23CA9BDC7AB80866D902315E8102EDFC4A5C1735DB0559EE8C85532051166778FE504033F60F97978A206787CD1FB3D6E54AB5E15EDF93CF65EEF58B0C6089E78E636CEEC3AC2FC3E289F3A3DB117EF3FFB02C96779CCF12C49514363F809ADD1F1BA740D031DEBECDC15BAF0A49F9F36878ADD9E5B69A07678EF1E2F7D4996368857DBBD63A84694FFAD2BD078BE58ED66877A8678AB89A4AF52F2814C6A3F9F425E81833DE0D989F31CE358B50315A3B47678EF1C72BF9CC31C2E192DDB08EC0F33A097CF4E2FC29B3BC07850A35A3882B28D7FED2D44C6F2C37B0F47A546ED65782E929ED9C63E86697338A3DE7A9EF38C6A472E6182B4B9ADDDA3E86C9DF45D6943AEF188D5A4F43734F09E27270DE9394DA032CDDAAB1C33B9DABF8DEE6CF39063A85C99C038FB157EACD4B19B0C4F3E0B266D799633CFF350181807AE61895CA8147DF688F7D6CA1EB5D0EAD583CD2CCC2919D88ED40846F4022B1FDCC7D0B7197E0A09D94DC1F6BA740BC5E9DF379CF37A58AE69E6DD6863BD1A2434C79868EE1F7AB1ECF6402AA8D2378F17BD271027F50FD5F2C65B9CD9A8BE3D78472F61129F6FA6A66DF5E8FB607B1A805B9CC21989B4780CE417B89DC33BAF1010CE3E3D8372BD031DEFB2E3A468DC519788C0E31FD260D1E8FCC79994DFD21424EB760EA8F2CAC04D47FFC410D0AA51E18E6C30EE8A9B2C5C9A2C5E555AB2F0A3BF66AA809FEE53A24855D308B07407B8B8C01383B565686DD9DE3CEACD7E4667CE72708AAB93DA8B801343A86071D8395939322F7EA650A14A5657BDE64FACF7E89C206730ABD78BF4DA878BCE9414710E36D4D88B5EDF55073105D6D4232BA0D1BDA2EE06AC2789C9460EC48A5BB800B8DDCD3B1061D63FEFD79C74045700F9DE01B1D034B1CE47BC5E20D16743B7F1B6B3E9D84D7AB77DAB180491E9C0D35A5B626A75A7638DAB2B9D912248416948A1D40074173DF4E8C2B66E91368F9C3B1EB9AFD16B3AC2935E733CF1C03BB5AF5CDF38EF17A42721D23CABD792500C70DD75B60D324BF39BAA9F2E80098DDC4B178A3BFC49506CB5C09C2A112C8521B1CE760EFB9E9F25EE28128540E3CA9E41E6BCF1E3C9A0B878E31F3458CE18C7A573BE71C03036D47395EC63D13FFC59F4D37779EE4AA752365C435E46892D8D092C296BDB4B039F0BDCB837FB1C4E28226944BFB800EE2BE9D78CC94B670C6ECE3EAC7C7E07BC6F779A62C3A4673BB77CE31DE4C66CFC631BE049FDC0B8B068B39DA7D74926894DDECCC30750EDAE9CD2FB3363F3A809A69DBC115D39E9B3506BEE90D585928402A51077C0DA7C1F3FCF797DB128F10EC9E4DCB9F9B208F05AF47E7BE1CC7C8E73BE7D2F2F0811AE7F1640095C5AD3A0706C222BBB1E3D11AB0A73ECCCF1BF07ED680C5F94D58E28A100C94201AA9829ADD06740C556D6BE82C7172829F834D165B64EE6969EA28C1D1EF2F1D4356EA363EFDDD53C731E67C3A60E95611C4F5C9AA9F9B1F8F09748CF7EFE4B39E25740CDDFCDCCB33748C2CF8FDF484277E10C338EAEBC6D1D953F731E18C7C4FE3C8B6E838432EBF7B6E12E046A10BA1509D161D113F8E22F78039C7A30ABA4F996531C6EB5729C0C13B540A39733EAD0E35A1881BE1A4D1943F776F3E36269F8BDCCB1729F07A4567206DD31C2E6925885B91578F346C4AB9A78F8EE7CC319E3F131C67E0C31B273476408C0459E982AE1F3FDA9BC9E7933CAF5FCAF06222FECFE4E41AF03C65112446404ADC01497A3C23DD97F1F299D0FFED9718F87CC9B19E224F3C1264B9CB25C59D47D91BF535A81CEE2141DC0E9CEA10169E866310C4C8E0458B0B855BE41804F1253CDFEAAFAC9C4F3C46103F3DD158DB0EF3E7535C12C44FCFDA5A1DD6E3ED4739E24D10774638D284B878B3853A04F16489093B369A7B4A1004120C566D34F79420086469A564A3B9A70441203CDFD066E765C0E59D6E15411098063F1C6E8E65C266827830502942ABA527B77E616E2E2BFCFEAB7061575682B836CB2B652725A47BFAA809AE9BC2CC5CC67EFE5B14D4CC163906717392628B3946EB51AF8916E526175A2FF7DFBDD5606129DFE738DA9298B82592D4D616974A8F2ECE884B4D8FA8B4353E521FCC2D9740D177C01FA74C20C40891D2DB9092DA639FAF56529B1E8539434C68D94BFE3AAC0B751099634BCC49DCB710C468595828C16AA87EF2F54EA6E380CA1C22A3B4FA6B7C1D6289B6935293BA98897B636DB50EA1B512C8C987DD44057709C2549BA2B86387C375660D509952A85F641824887B0555633558614FE5FB9D5C8801B42475B458DCB2FDCC4173F90E144BBDBEAAD2DE11C498804EB1B2588368B435C06379841B9B9C6E99552C1F6966E9C81693BB764CC018671BF2F9D1FE2C821839D89CC19B54CB7781E7B77017A2819CB66C45D965B6D7C7D7449159D4E2585CE2181E8B7297C3240BA70E80A6EB9D7E3C69D942D21A84E3DB90604EC09C8229C2511FB71E767F24413C3ED01114C9D21CC7C8EC4142D883B5600B82C126847966E11608710B84440722AC4CA5F741D57AA0EBFB60567A679B2B3EA64D6908822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008627CF173054F60D1E4B074AB460AA605C7F47BDC1D7D3F4110C45852500F3CBADEE55466B2683926499696DBD80749DA8664A20DEBEB0DE0C30D58E36B105EAF4324C28C9D8771CF82F5364458C987AA200A2D90150B360A1D276336EE7CE3FE987B818F573C7CBCD67F33A9C3CBDFD2105C326D140EF7E55B23CB96C0AF35617E6E137CEF74F8FDB728F8DEEA7D120E82209E1CAABAEB51D58E56328F2193EE40226A41843D0023ABCD41345CB7D349CBCEE53B7DDCB70305E4D464B979663C5F3B6798EFF76B43B148A45A278B9C0973730624D35B9094EB77BA1F096EBC532CEDF597164A108E6FA158C0B3FF0E41345CEDC7F9DB6DCF26C59B1E4DEDC2AC6F0324D93A492B3B7FA7656BF0F259020563A4A244100471EF48F15D8FA274B48CB207EB9116C4636D10C43A6432FB76A978D437F23DCD892CA4DD3B6B1D3B7B6B4A6D2D296D9D040255585ED681E7CD3B110E143345A9DBEB9112587BB8FBC2218B849A100B57ED281336F76D37020583455AFFCBC4D0F9DD7167EC1813D8D04A997D7FFDD6DF4F100471AFE4F30742B9C22207261049C1622DEB3A9627281A281EEEDB1E0C8C3016E7CD93207BC8F2AB26FBDD2A23150EC3B0B450A834300ABB70F8E14FA8543F807FB90A3EAF660702A37DA04B52438B471A8358A40E78EC561304418C27B86553B1FC51334B1F2111DF0351D881BCD63BC9B3C8C1D9D2E90E2387DB8042C1EC64656613456324C221CB358E0986BDBA5A8246BBCB04E32FA8D50FE1DDB40A539E38F897AA7D9F4F1DC9FF0305221AA90F7CEF724C2CEA7DDA7C9D2088B10445A25CFE4BCB6F1C4252DC0559DA67027134148847B6E79FA2B6B5807F73100A9880C76EF58DD0758B4BA5B76C295D87BDEE111C7EFC139ADB9F809BDF84579331261A317B71F6F6E30CD8F5140C18F6E25C11B0A4AE288220C68A42E193A758FCA865944390921DC8E70F5C9178FC9BC2A2500403C541C05F0449A9DD58344C732818F566178E3EFE8F6395AD63F0F9F230F13CC284A3786BC1F0FB0B9E85D9627F6E7A03961714E0F93C75451104311E18C6B1B0B9F91192890EA4929D2723125F238A652D18DC1C70737990D2B57E5CFAB1194D6A61D7536F74FB82D080F6EE311C7CF81F38F8F8176C9AC7F0C79B2CFCF2CB2A138E9CCD472F170C9C5D85E69E7E139E57B9254EB1DFBC8802BF9AEBB3F327772D08827844A8EA27F6F0EAB168A2076AB6074C30FA281CEECB4F161C1758982B0C42A122E078845B7D2D54DDE29272D366C604E313EC743E41D1EC412CDA86C98934FCF6EB2A846326FBDEF620ADB4FB8AD2D64EC71D54B5A1CDBC97071BBA054C34BEFB7331A2F0BC890EF8B51C8B2E54EA8A2208E261C8E78F858D8D0F20081D90241CB87EFA22F125F800C701E4195F81451938F3E8FA03C9AA626942AC09DC7C0E44A931C8E9BBF666B137C075136F26B3100C560792D2AEE05458A3D8D352C916ACAC6C80593DF82791DC84296F0A8464C11645FD9B22C0F33AB7C6E76DCF1FB10B5D514666FB997B4810047177A03068399C0ADB0326183F9D507C8928D6B8B550D19E9FC93BB38FE2F16F774DE58D8EA017F621996E40426C83986E0CF279EBEC412ECA4D8E0986FDE695026F5E2BE7A6D5CA6A8D4B265B76787D134AD503989DCEC3F27CE94AC1989F4FD96BFC0644C561D756DEB0840D6DF76471360D7A6EAF5F50C773561A41108F9C7CF640C8647A90CD7441D58E7F6AA13885E70B1E51ACF667BC06B092D9F9AE298C3A14B5A349520B524C28360A9D9352E5E86FBDD019E4F23B609ADDB3F74F4ECADCAB1769261819C012CFDD979C2E2CDDDCB3D74225D0CD0E8456B620B85CB3313794FB960B447993F34EA56D49AA80AEEFFEBD615827E56A0F850212F1CAC0C87768009C2088D1824291530F2199D8034D3D38C992509C23CA4482E334DBEBCDA060380F618C26CCD22184029B9092AA2786D1D130C589F30146A9D4B54BE52E98B52F04E339138C09C57EF58209062BF1DC7DC9110CD5D8B5E76755508D3DF033C198F12983F5F56F4FED45315BE78B7D261A904A554E8AA59DBFCB95DE404C94A158FE1CD9100441DC1A1CB8CE6B872026B621CF840285C37D89F802148C9850B6DF7A5488252A902BECC3FCBC0E217FE124295F5CE0576B7639140C73AB0B78EC563B82F17242B6275FC8E0949708062EF22BD50F6165A90ADEB73244222D3B1AFDFEC077225175C62B70DD8751B0A0B1BD0F850A7545110431022A953F05D3FC00E9F49E23143FC38CA7DB702A18F3B306FCFADF3178F54A1884FCC56FB6E0512458646137DA871704E3D5449A4518691661A42F0846385CB2D7420634768E617DBD056F3DD7130C0405A258DEEBE78D06E0FA0FB79A2008E266542A9F3CD5DA2750941E7BA81C9F3023A1B8062818D3539AFD762A07AF5F09303F63D8B3B3DF1E8CC66EA88C6A41CB3A642DFDCF6B544E05C3F34AB920183C6F726B41C35E59D6A0B97B0C91F53ABC7A2180106FD9987DD77DDBA5549858D4B70EA058DA867A9DA24482206E8969FE2968EA01A8992E546B1FFBB852DB7D89B8028F47F5BCF5E4FECD4463E07BB701281EDF130CDDEC7205B30758BA550E38C8FDFA85CC220C09B0FC72D05B144D6E7949B3F9B50D685A1F201E6FC3F35F13100EE3C0F7B705C3340F844A895DD3CA1EA070B8D5C48890A45DCFD769F2D1C6217126418C1C148A52E913A4A57D16557C6251C59FD402BD215EAFCEF9BC06F87CBA8DC76EF539B06BC828F6FA9ABA7DA16BC8E30AC6F41F194730F0DC7D89451879CD33991848720DB65A2CC2886C31C110616222690702C305794B6B99736B2B8A454B53D9CF29977B34C0FD030CF75FC13C6743338C9E66E8BDBEA1776D344D39B4C36B4D3B12690EF8D5A693863F29EE802C59A048964682413C49CAE58F5A46EE8122F74EF2344E716B502470111F138D6F0A46ADD6E58AE69E6D96F6008FDD6A071488290F138C2905B03C150C8C2EA6A7D2F69BC93864D4266C567A202BBBF062220993CFC5C14A40FBDB1F504F666692E07C11C330BAB059DC4551A2EBEA12670F71DC991117438A4EE95ADCD298F59371CB1685DD41C05F8760A80ED1D83624040BD4EC3E30C100140E556622221F73CE9E2CAC7C8A696F08E202984E5C91BBA01B1FFA74D38F86592612B3BE22BCF719361EBBD5E7306B16A76ABB7665AB73A9604CBF4EDBEF588481E5A960783DAC9E09C6DBA934289936138BD640CEB4FEDFD49BCCE05FFF198649261CDE7732E4362DD0F49D7FA46C0B30BA70BEF427211E6F7AC468933DC4D9FF57E968AAB2D757955D3B166ED9D150D35E9AAD0C96E7AAB8D811FC4B2688891D48A5B68109862646996830FB1C55903F1084033A433E7F00B1580B986890588C9059AFC904A30033BE22138CCB930662CB54DFEC42B97671D11C0A840785E24D1A9CF20BC1783191B65F4EA49DD4E73C5FED633DCF578477EFE493972F1220A51B10131A9092EA27F9FCD3892A70E123EE4A880FF26189EB593A7D1CEC470B2ED5ECE0720D024B155859342111DF0635B30765B30B8E70E098028B229C3DDF99A8B85F4B10C455E0EE76B98D2348A6F7492CEE001489F99922CCBFFFB66014CB1D2DA7B7CF2DD83B056745BD9E48D993CF45189643C1C0C1EF67FF15658221C0FC7CE1C2803AEE659ECBEF432A5DB7F1C1EA568F3DB86739460598C491593F9DAADB68C958DD0E06B798D507A1501D22D116AC471B4C0C9AA0691D2814510C2C470C1C1BD34DB708E2D1522C1F69A9E41E88E9CE00538EBBD5C408194618C56F46182812C5F29E5DAC74BE211822F7F2B968BF7999062CF1DCA99F8C7213BF8471CAEE80E32EAEEF9055D6824E6FB346C0C3A7FAC0563CA647413B158254BA69A3AD054BF6CAE2D016678DC1DCBB022CCE19105DAF405A6A38DBC66214F1A5FD484247822046008A8592DD07398BFB53746810F48E188E6118F0FEEDE5631828125A7ECFAED6F72F8C5F201851382BBC272EAEF4F6BC8C7BD0DCD373E083351EAB8392B54E14D5D246D9F58251802CB2873733DCA90F4D55DA5A26DDEE67E4B61D09971D5BE60C7B69AE3498F31ACE38C1F2421122912A48E9260A411FC500A3892F8DBA880862CCC05DEF721B5DC8E5BBD40575C7E0CCA877D31B2CC2B87C9694AA77B9ACBA03B5C6E59180D7AB726F5E29F61FAF3280259EBB2F5D899CB5844CD68250A00CDC6C1EFC2B06F0C19A1D8B0E6D892BD87373BA63EF9DD2706C71BE602FCD17D943BF6647C3553B18283986C7D3D3FA60CAA3C3DB691D66670C9867D140D06F422C5283ACBC0D281A281EA711851355900810C4E304C5229DEE415AB66C7C58B9D5C41DE1F5E8DCDBA93C4C4FE56C3C76AB1DB06B053742929536A8EAE5A939F8408DF3BECDD8EFBD79C0F25B33ADAE03A6598F465944E01A7EF7E2228B8066CFDB69D4706AA7D1C497869B345D67773F82201E29BA7ECC65B423C8AABD138316E3DD0B5E8FCABD9DD6C0E79599609C8F0E502464A565CB4AE3BB82110A6ED9DE775998F3E9762070F9C0394110C4C8C06481CCD883A903281C6E3571C7E0F4D799E90D78EF95C13795EEFB7CD259AB5C372D4ECB59F666C9023C76ABCF110A35B4E0B209C1606980C76E354110C4DD8002A11B47901477C1308EFA85028D5BDC17B31E9D7B3F9DB7FF789D8437AF93B6677238CB09534D30A1E867B3DB97EE43B1B6567DC644E27F43C1128402A57E3058A788902088BB27AF1E69499145162416F70E0AC68B89A4FDF24512D3769C4D8B3DED8E52733BDFEC8E220882B85774F59813596491D78E6CEA8ABA7F9E3381987826D82F7E4F00965EEF5030C478435B8F96415187BBF11104413C289274E0318C23109CDDF16861DE438011050AC5F36722F87CE2602DACFFCD87374E7EFB6D1514AD0AD1280D6213043106C872978B47774056BA145D3C204C2834148BE7BF47E1F56B095E4CC44156AB273C9FA7710982201E1E49DDF5140A8720A5B671A09BA28B07C6E74B0ACF9FADF7D1F0D8AD260882787830BAE0232D4825DB361EBBD504411004711E5C8D1B4EEC001F6ED978EC5613044110C479D6E36D2DCCB780991D8D926010044110978002118DB56DBF7F0BB024C1200882202E652818DB2CBAA8C2EA6ABD8F5B55BA2F11044110C467A2A2C50503D56174C18EDD6A82200882380F8A442CB103E16803A2C20E8B3068BB4A822008E2125030C2D1BA1D08942126EC5094411004415C0E1F6D728140C9F6F355C0920483200882B8149E6F7A42AB8DFEC27209FC7C65108FB769A537411004713938536A75AD01819001D1789B664A1104411097238A4D2E166F4338DCB4F1D8AD26C6181FA77AD0DC53822088FB4314DB5A60B50AACEC4B14618C1D1C1387C5459D5B5ACA6B3373D993E7BF09E0F3C56DAF374A024F10C4FD829145385C8740A83240F170AB8907C4195F5A2F6B7EBF7932F17B0C5E3C8FC1EC5C16D4EC16A86A4DA3088320880701A30A516CF5DFBFDB8470788BBAA6EE194962FF7FA9AD8952ABCFB3FF7F20501CF8BC06040226A8B926F8FD45261C0512088220C603148D52F90016974B105EAD9F24E516EDC5306224950983DCE414858943BADD8FC4B76C3E521FF80355602524D32D50F49D3E8A074618EEC7088220C613140AFF72157C3306CCCF1748386E88CAC4219FB734667D26104C189A8395401D56820D588D344194DB20A2703001C108C3FD184110C4E3830FD68580BF02F3DC26AC86EA83396EB38F75EECB044392763DAA6A71A27866DA7AB8D1E7D7EA108D3440101A90CFEF32B3FA281E32138738890341104F15140926182773B30508F80DF0FB8D133969FD54C281C220CB168B043A9A24EDF593F28E1D6111031F6EC2FA3A8B16C41DD07216144BFBA03261C0E8C2FD284110C4CF078A8494DCE9F3A13A2C721588465B0345C1EE167C403ECEA485F87B6384A09B5D0ECBA128B4355CC0C8C79A363310C43D880B16A4D37BA0170E58B4D0617F2FBEFFD42861234110C437610F5601C52293B120166B030EDA068215E0F99A2DA72D3B2D312191B00B66F810FED2A43B7EC0160ABB1E5DFFE2819EEF69C5D2877EB1746CABDA9E6342AA6D27C4DD412CBA0362720FD2F22E64350B8C6217987038E30A34B640100471479C76DBE003BA62F680090784D75BB012DC8285951AAC300B04B6808F34D006A268D968427CD75E0BB61C0BF3CDCF166ED91166F19875666166C9F4BE9D96F79D32260CCF356DDF0E469AF67A6267105A6F4234B103F1940502B36CBE074C30D0FAC5F2C7B3E8C0348F1D2B540E4814088220C605DC67E37460F8CB68E3B44E8C0E2DCA371DE3B174EBCE4CEEB2CF7CB6B30882194614A7861186FB63098220088220088220088220886BF21FFFF1FF01EE5A3B4D309B7B320000000049454E44AE426082, 0, 0)
INSERT [dbo].[tbl_Temp] ([id], [Version], [server], [username], [password], [signoffby], [possition], [phonecontact], [siteid], [note], [contactperson], [nameofbarnch], [addressofbarnch], [DeleteData], [EditServerData], [Depositintput], [EditReportsaffter], [InputDepositInpass], [PriodMake], [Systemconfig], [uploadBeginbalance], [endyearPackdata], [makedepostfromadjamount], [deductdepositamount], [redoInputviry], [uploadpriviousPriod], [imagesign], [nationKA], [status]) VALUES (4, 3, N'DESKTOP-8D4F853\\SQLEXPRESS                                                                                                                                                                                                      ', N'tr4                                                                                                                                                                                                                              ', N'123123                                                                                                                                                                                                                           ', N'Trần Thị Bích Liên                                                                                                                                                                                                               ', N'Trưởng phòng Tài Chính Kế Toán Chi Nhánh Miền Bắc                                                                                                                                                                                ', N'Fax: 04- 33853723                                                                                                                                                                                                                ', 4, N'displayonly                                                                                                                                                                                                                      ', N'Nguyễn Thị Lệ Hằng ĐT: 04-33853725(số nội bộ 267) hay Hoàng Anh Tuấn / Trần Thu Hương (số nội bộ 158/ 256)                                                                                                                       ', N'Chi nhánh Công ty TNHH Nu?c Gi?i Khát Coca-Cola Vi?t Nam t?i Hà N?i(B? ph?n Công n?)                                                                                                                                             ', N'Quốc lộ 1, Duyên Thái, Thường Tín, Hà Nội                                                                                                                                                                                        ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x89504E470D0A1A0A0000000D494844520000018C0000008D0806000001D3157DCD000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000027E149444154785EED9D6956DB58B7F7EF2CEEBA759FAA5448485286C40E8DE8DC806C6CCBB265C9966C2463B9C31D088C4D93A4EAAEBBEAF37DC7F00CC003600E1A80BFD750F67BB62C480824103060C8FEADB5D7918E1B1A69EB7FF669F6F90F8218036AB50F904AB5ED30BF658B525B73AB1D424BC5B373DF5BDD760FC78BA4B807EEE139F2F9E659FDC473FED2F73C2A44B9C9FDE11160F6BDFC78FF18B3740886B16BBF9C48DB8B5CD9F9434CD3E29C171F135EAFCE19857D78F352B1A3D1CFB7DA75D0F52E2746AD03F774F4AC27AC817B7825B35E93336B5DEEF544EABB0E2EB3DB6F912B82AAEE7ADCAAF1C2EBD19DDBC8E3519C3F2493D986B9B902A4930D88F2B587BBC56479EFDA570379FD2A399E8FDA1FE5E5EF89C7FFD825881F4014CFB7A1AE22141D8AE05822A5764EDCC30B4852D3939477C8C109E2A911E66BB0C6D7EC50A876AE29125C2C9E35659697361FA7F35B9DA3B35F7C61B6D8770FC70321DEF9EE7F55921A8EBE64350B62D12DE7BD996C757CAE4452DCBDF2978909E5B3DB4AD5C72CFAD3D4836BFD377DBECA5920C4F3C3D8A352B104A7E20A0A85038F9CB2C6AB99FF82C5E41B9BBD4BFF7854FB70B465AB8AF543CD9B1B93CFF76EF583E6E674585AD8845C6E67BC1CFC7B6839CBF6FB3FDF560F8E611CDDCFE5BE4B022B63F478BC29C1D013F823C2E11FEB287B1288526B3C9F4072F2FB6225497BFD7CBEF3F81F00044110C4C3A1AA5D2EC237004BB7EA526667D44B9B08994C0362E1EAA5119324D51F4F1BFFA128953F413E7F70ADF0F44B94CCC5E6CBE1C7FF81E7CFA3172ED41F13A99FAF7DF723241357778E5CC5BBA9BCF31D79A323942AC3AEACD7AF145B566BDC8A3BA47ECAD27C962EC8D7A8D9CBFB386EC2F49466CFCE0E3B7F72FA9EF3787A3591B679DEE4D6D75B673FA751BB5D77C693A350F87427DD1C382F03CB7265382D68CA23DBD353695BDBD8F967DA23434EB76E75F171FA83245A5A28D8B4438106E4D59E36B65322AE8359FEDC1B3E6A66DD8B51AB0D451FE7984CFC17FF6F3C4E261ADFFCB93C5FF188628D0B33C1E7E6366143EB409CD5B92F3F4DEEBAAFCDF7566177EAE7CEF650885A4DDF44550FEEF46EF3F992361FD6EFCCF39E0CAB91CF224A3C30EBD1F60FCD6423EE90257F893C635C10C5E699B0DE250B4BF9BECF27D085BF8A95958AC0878673254681AAB4353ED20485956E1571131485054F2B15580ED66C45E968A268713CDFC409F19C2C7739EC202C147B7654D80535D701A34891334110044110044110A30117E3A6533899BE0DE1C8961D0E6FD9B262D9EBEBDF1E9F40A6272F4E5490654B482BB71B60FA29498B7B2CB2FEFE5443BFBF74E962345C986C9A1707B11289ED67A9F4D678CDB11F67AAB53FA158FA78ED41A1A450B97041F01F5EAB1FC2E2AC79A13F2C182890675C073171794A8BAB109395739F4B88CD815939BE703102019DE379F55E3A2C1F2DF9FCB1502C7EBC71DFD3D78F9EA4D48060B00605B30B5ABE7D288AC3B1717E3547C3B0DF23CB2E045E0CF7F446E06402343C8EAC9741D72D0EE74CE139CF9B801D90783C3F9FB2370CEBA4F0986774DC1586C12E44F6C767105E46345139494955473F6ACD2E87F960F0D8BF5C007EB5E17844325911CCD2982D921B072A953F05D3BC9D477CC9B35F3FA747C28B8113D8F0D8BF9C0321DE3ABB00CD9DD14D9C7B32A8EAC1377324DC049FEFFCAC104C3084652251827078B81CBB5C1EFD85C038A8B879D44FC61F69FC924EDD7E6EEDD7BC7F6738DF793A810D67136299DBB0E05FBF44402BECFC8DE7B741162D2E2DEED8CB4B35C8AB0757CE901F7BF2F9BB99C836F7DE742E0666ABC2F234631537571824E53A6B24FCD85A350C1C8DCD5E3FB2DE18A8CA2EA8F223CC4376154AA67327CDCBD9F7C3EC0F5A7E38E9F9F462785EC6AF6C396136AEA450EFE3D4CEB550194E731A3C698AE6873B7BAE4E7B72CE772BD9613E9ED31468A7E0EC143E548399391D16D93F7D3DB2850BE31F362DDA437297736D7DDEA18067B5E162E7D550FDCE2EFCA347D78FEFF40E3CCDA5A7BB3926797F9302BB6F2108779BCEEBC5C413496C781F18C6E19DF60BF97C92C7EB4D8E347679B2E0C434F7907848E2F1A6271ABD9FB9B6C415D0851823A2A2C5A1B9A7C44382E309A7630AC418F0A36979893B24297E1E53B84B267E8F0E7CBEABFBA37E6AC26BDF9FE7741B70CB8AB9C532A8F99FA0836F54CCCD0FC71C46852034064A669BFAA06ECA32570449BAD98400F480D06A1BCC520F5495FA9E46822C5B5C4C684138D2B21565D7BE6C09999AEF685161C78EA72C28558EC777DB1282200882200882200882200882209E04B889164E3A77A6E3466B1CCE9F40C3FE4C34F76D3722B8600A535386EDE70AD7EAE7C4A5EAF373057B6ECE18D93A2282F826527CD7E3E47B132C88AC360746BED757F52E779D911521D91212C9E6606D6DB802E4BAA0B3F9974C8845AADFDC3CE24B5289E130595AB1ECE0728926AB12A307534BE7733D1013ED81A2EC8D6C926F60A57412E5AF9713D630AC7EA5BA0795AD43783B9DB95652DF38DFF42C2D9441967FD24523C4E831CD3F859CDA837CFE6E67BB4BF18A676EC680B8F4FD5D04306B43EFE82334DB1FE1E58BC8A5794CBE2618280C027EE34E7F7FE227219B3D8642E1C3BD2ECB40A77837ADC169868CAFC12D9A59F30B0E3EFC051BFA01FCFAAF20484ABBE2BECC14ADF1EFAF27B7607E99195F9C661D113707D3BEA4D3A80EA34B76F1A3E0E2E4B5D5E2851BB950D8F56433BB20441B27B8AD4A46B306C1E0303F03260997B355987E93624E35CCF3730AA698898A4355D9347AFFE75412C475C0F43B8ABCFFA00EF1250B0BDA20EAAAC656ED0852E91A9866472895BAF6699A86572FD2361A1EA3922CCE6F00BFD63CCBB9748A772A6DEBC62EB4B78F40CF8D2E2E229E309806292377615479A946454C28DBD3EF34989FDF38D7942BD5F66D4CB184C72F27641B0D8FD131C2E112ACAD352012B97C79446EE327DC3D9DF87114E5106E93BAF02EC10D337D6F3538DD34F394BCDE39BBB95FBF906D343C16595329B892838433DFFB6236D78271B35C99C44F44ADF2278C3A4FDB5DF0DE5780D30D4C11B3667145F3B3634CBF4EDB68782C08A57E56AB4322D18269372D99DFAF7A4CF3402896EE3691C74DC0F11FDC2CD52CF66C216ED991F03644583350CB74A1523E80DB0E80123F484AC1C0FA716CAE343F538459EFE7AE58D3EC725B8DEEA58EF18A29071FAE3AAF3DFF570256D77408476BA0B2801DEBEE0B4C2727469B9C106FF78558DBF62F54211669415ADC01DC41F8BEB68C23AE090ECC4513D68D76C97F28E6674CE6189F15A354EDF44F036F04D3F29DA6E6FBFD9728BC9C889F05D6B2BC3DB2657167535BD80D2FC61B5A3452B6B9994D082D9721196B406113D73F0E97E6B91F211E0385CA8147C97E7ED23E1666DE9D6F4AE5363A50A97CBED9BF0CBEBF863D99414C3406D88D1B75E669D5388C57D03065229ACC9EDE6892D8E807574C1B6DCE5B04EF9406EBE10AE8F91D673C059DC2FD5AE2A950287CF224A50EC614F7DAA41805EFDF6D80D733DCFC016FCEB47C3EFF4328B865FBBCB94B1D8320BE49A170E091C40EDC754ACFBBE2FD74DEF64D0F15A158B6B45A7DFFCC31F24647783795014A1F4AFC301BDA11DC65C2E1BB06D3B69EA66E4D084D4AA541DC1ECCD39214771E7533E3E533A1EFF325E18FD72950D42A8D5813B747C9ECC35348378CF9A5DD4382B83D7C741B784A704B109FC1E5A37E7F15281537417C01A6420FAF37AEB5B28D207E1AD031426B35A0BD0208E22B9656CAC0F3C3ED8709827011C56D788A7B683CFF2DDEA72D22881B83B338E7660B20C51FEFC8304EDE13A5B6160814078B4B1BB0B494A7ED3A88DB93945BC22C730E2CDDAAB105E742294ABB1F8A34074B81326C142CC0DD3BDC970962F4F0C1BAF07EA6004BF39B0FBE3809A766E7F29D7E886FDAAB7C13B29916A8CC0124DAB6867828303B603AB5034B0B155014AB8FABC46EBA17D3D7E03CA6D33509C5D2513FA359F67AAC0D09B10DB90DCB599136AA9F4510770EDEAC78D32E076A7D51B4705F2C1063FBB01A68C17AB80D91302B232D10853D0847772096D885B4BC0F5A6E1F368B0760181D8D16E91004411004411004411004411004411004411004411004411004411004710EDCEF1BD75960B6129EAF398619C34731D3F6CDA4DE67F66FF7F44AF8D5467F6E769396FA12F70B4E3B37F23DCDD8E84134DC8068B40D49A165A7526D7B8DAFD9617ECB0E87EB4E29C65BF6EA6A0DC4540BE2D28FAFC3509486363565C0F4A47AAD4C28E1B52648CACE3FBFFF1ABBB0431341DC09F8F4CF66F721C26F8392DEB3D1395029DC97BF8B986CF5FDFE3224E5FA0FAD305494BA5D2CEDC1EBC904603A7FB7FA5270896F2AD1761668BD7E9E84C0E2D57B8213C48DC02D0514A5A30556AA108FB6FBC3F518376B1A09C996B0C495609D37AFED1C9170C9EE1E7E8450B076A5639C22CB352E1E6900AE2377AB086274E03665C904530765D7666A3192B5E449A122F0810A6B7A55AEFC3EBCB1FDCB4538FCF017BCF7E620BE5EBB56820449AAF7A574FDD16D9E438C39A6F9A720A7BBC0CCBE8BEDCAE46C4B98F36A20C52BDF7DA2EBBAC5C5A235E6187FC2BBE92CBC9DCE5C99D13DCE373DCB5C95A94583B28C10A3A35CFA1324A61277BD7F9F9269F533D9D6779FEAA66971C59205871FFF8205AE08DC7CF14AC708F90D6DFEBD067E7F819A51C4ED318C63414A7521A7F6EEA59B332E553CF3B39B207F2718C79D955AD691E3186FA773D7728C254EB1D1DC5382B839F9FCB19012F7019DC3ADBA1744B1DC4FCB5BDF548D9CBE6BEFEC7D84FDC34FF0E65506C2D1E2E034A096D48A47551B17C636DEFB6236CF53B236E296E8FA3164940EE0C6966ED5BD81BBA42ECC6F7ED3319272D3CEEB7B10592FC1CB170A144A1D90956D4867AA7D395B3D51B5F31B58F2BCEA79F53C0158BA5504F1E3E8FA47164B1C3F6862B685B90253818B8172DEB0B485991CA8AAA5A9EA4EE58FD719080486DDB5ABA12268F93608C9C2B92613CFEBDCFCBCE4380BFBBC90CF8FA6278DF889D0D463D8D8F8F0E0D90A45B16AA3B9A70E19750F8CC2EE3F1BC6AE73937B2665EED5CBF4996368C55DBB58E94170B976C13104B1E87CA6681C809EDBA36921C4F5D1B2C7EC49FCB04A710A6B4E690B0B39E76636CD03414A3641518737B451D873EA2799634C4EA4014B3C578D5D3B57DC8395AF1C23CA9BDC7AB80866D902315E8102EDFC4A5C1735DB0559EE8C85532051166778FE504033F60F97978A206787CD1FB3D6E54AB5E15EDF93CF65EEF58B0C6089E78E636CEEC3AC2FC3E289F3A3DB117EF3FFB02C96779CCF12C49514363F809ADD1F1BA740D031DEBECDC15BAF0A49F9F36878ADD9E5B69A07678EF1E2F7D4996368857DBBD63A84694FFAD2BD078BE58ED66877A8678AB89A4AF52F2814C6A3F9F425E81833DE0D989F31CE358B50315A3B47678EF1C72BF9CC31C2E192DDB08EC0F33A097CF4E2FC29B3BC07850A35A3882B28D7FED2D44C6F2C37B0F47A546ED65782E929ED9C63E86697338A3DE7A9EF38C6A472E6182B4B9ADDDA3E86C9DF45D6943AEF188D5A4F43734F09E27270DE9394DA032CDDAAB1C33B9DABF8DEE6CF39063A85C99C038FB157EACD4B19B0C4F3E0B266D799633CFF350181807AE61895CA8147DF688F7D6CA1EB5D0EAD583CD2CCC2919D88ED40846F4022B1FDCC7D0B7197E0A09D94DC1F6BA740BC5E9DF379CF37A58AE69E6DD6863BD1A2434C79868EE1F7AB1ECF6402AA8D2378F17BD271027F50FD5F2C65B9CD9A8BE3D78472F61129F6FA6A66DF5E8FB607B1A805B9CC21989B4780CE417B89DC33BAF1010CE3E3D8372BD031DEFB2E3A468DC519788C0E31FD260D1E8FCC79994DFD21424EB760EA8F2CAC04D47FFC410D0AA51E18E6C30EE8A9B2C5C9A2C5E555AB2F0A3BF66AA809FEE53A24855D308B07407B8B8C01383B565686DD9DE3CEACD7E4667CE72708AAB93DA8B801343A86071D8395939322F7EA650A14A5657BDE64FACF7E89C206730ABD78BF4DA878BCE9414710E36D4D88B5EDF55073105D6D4232BA0D1BDA2EE06AC2789C9460EC48A5BB800B8DDCD3B1061D63FEFD79C74045700F9DE01B1D034B1CE47BC5E20D16743B7F1B6B3E9D84D7AB77DAB180491E9C0D35A5B626A75A7638DAB2B9D912248416948A1D40074173DF4E8C2B66E91368F9C3B1EB9AFD16B3AC2935E733CF1C03BB5AF5CDF38EF17A42721D23CABD792500C70DD75B60D324BF39BAA9F2E80098DDC4B178A3BFC49506CB5C09C2A112C8521B1CE760EFB9E9F25EE28128540E3CA9E41E6BCF1E3C9A0B878E31F3458CE18C7A573BE71C03036D47395EC63D13FFC59F4D37779EE4AA752365C435E46892D8D092C296BDB4B039F0BDCB837FB1C4E28226944BFB800EE2BE9D78CC94B670C6ECE3EAC7C7E07BC6F779A62C3A4673BB77CE31DE4C66CFC631BE049FDC0B8B068B39DA7D74926894DDECCC30750EDAE9CD2FB3363F3A809A69DBC115D39E9B3506BEE90D585928402A51077C0DA7C1F3FCF797DB128F10EC9E4DCB9F9B208F05AF47E7BE1CC7C8E73BE7D2F2F0811AE7F1640095C5AD3A0706C222BBB1E3D11AB0A73ECCCF1BF07ED680C5F94D58E28A100C94201AA9829ADD06740C556D6BE82C7172829F834D165B64EE6969EA28C1D1EF2F1D4356EA363EFDDD53C731E67C3A60E95611C4F5C9AA9F9B1F8F09748CF7EFE4B39E25740CDDFCDCCB33748C2CF8FDF484277E10C338EAEBC6D1D953F731E18C7C4FE3C8B6E838432EBF7B6E12E046A10BA1509D161D113F8E22F78039C7A30ABA4F996531C6EB5729C0C13B540A39733EAD0E35A1881BE1A4D1943F776F3E36269F8BDCCB1729F07A4567206DD31C2E6925885B91578F346C4AB9A78F8EE7CC319E3F131C67E0C31B273476408C0459E982AE1F3FDA9BC9E7933CAF5FCAF06222FECFE4E41AF03C65112446404ADC01497A3C23DD97F1F299D0FFED9718F87CC9B19E224F3C1264B9CB25C59D47D91BF535A81CEE2141DC0E9CEA10169E866310C4C8E0458B0B855BE41804F1253CDFEAAFAC9C4F3C46103F3DD158DB0EF3E7535C12C44FCFDA5A1DD6E3ED4739E24D10774638D284B878B3853A04F16489093B369A7B4A1004120C566D34F79420086469A564A3B9A70441203CDFD066E765C0E59D6E15411098063F1C6E8E65C266827830502942ABA527B77E616E2E2BFCFEAB7061575682B836CB2B652725A47BFAA809AE9BC2CC5CC67EFE5B14D4CC163906717392628B3946EB51AF8916E526175A2FF7DFBDD5606129DFE738DA9298B82592D4D616974A8F2ECE884B4D8FA8B4353E521FCC2D9740D177C01FA74C20C40891D2DB9092DA639FAF56529B1E8539434C68D94BFE3AAC0B751099634BCC49DCB710C468595828C16AA87EF2F54EA6E380CA1C22A3B4FA6B7C1D6289B6935293BA98897B636DB50EA1B512C8C987DD44057709C2549BA2B86387C375660D509952A85F641824887B0555633558614FE5FB9D5C8801B42475B458DCB2FDCC4173F90E144BBDBEAAD2DE11C498804EB1B2588368B435C06379841B9B9C6E99552C1F6966E9C81693BB764CC018671BF2F9D1FE2C821839D89CC19B54CB7781E7B77017A2819CB66C45D965B6D7C7D7449159D4E2585CE2181E8B7297C3240BA70E80A6EB9D7E3C69D942D21A84E3DB90604EC09C8229C2511FB71E767F24413C3ED01114C9D21CC7C8EC4142D883B5600B82C126847966E11608710B84440722AC4CA5F741D57AA0EBFB60567A679B2B3EA64D6908822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008822008627CF173054F60D1E4B074AB460AA605C7F47BDC1D7D3F4110C45852500F3CBADEE55466B2683926499696DBD80749DA8664A20DEBEB0DE0C30D58E36B105EAF4324C28C9D8771CF82F5364458C987AA200A2D90150B360A1D276336EE7CE3FE987B818F573C7CBCD67F33A9C3CBDFD2105C326D140EF7E55B23CB96C0AF35617E6E137CEF74F8FDB728F8DEEA7D120E82209E1CAABAEB51D58E56328F2193EE40226A41843D0023ABCD41345CB7D349CBCEE53B7DDCB70305E4D464B979663C5F3B6798EFF76B43B148A45A278B9C0973730624D35B9094EB77BA1F096EBC532CEDF597164A108E6FA158C0B3FF0E41345CEDC7F9DB6DCF26C59B1E4DEDC2AC6F0324D93A492B3B7FA7656BF0F259020563A4A244100471EF48F15D8FA274B48CB207EB9116C4636D10C43A6432FB76A978D437F23DCD892CA4DD3B6B1D3B7B6B4A6D2D296D9D040255585ED681E7CD3B110E143345A9DBEB9112587BB8FBC2218B849A100B57ED281336F76D37020583455AFFCBC4D0F9DD7167EC1813D8D04A997D7FFDD6DF4F100471AFE4F30742B9C22207261049C1622DEB3A9627281A281EEEDB1E0C8C3016E7CD93207BC8F2AB26FBDD2A23150EC3B0B450A834300ABB70F8E14FA8543F807FB90A3EAF660702A37DA04B52438B471A8358A40E78EC561304418C27B86553B1FC51334B1F2111DF0351D881BCD63BC9B3C8C1D9D2E90E2387DB8042C1EC64656613456324C221CB358E0986BDBA5A8246BBCB04E32FA8D50FE1DDB40A539E38F897AA7D9F4F1DC9FF0305221AA90F7CEF724C2CEA7DDA7C9D2088B10445A25CFE4BCB6F1C4252DC0559DA67027134148847B6E79FA2B6B5807F73100A9880C76EF58DD0758B4BA5B76C295D87BDEE111C7EFC139ADB9F809BDF84579331261A317B71F6F6E30CD8F5140C18F6E25C11B0A4AE288220C68A42E193A758FCA865944390921DC8E70F5C9178FC9BC2A2500403C541C05F0449A9DD58344C732818F566178E3EFE8F6395AD63F0F9F230F13CC284A3786BC1F0FB0B9E85D9627F6E7A03961714E0F93C75451104311E18C6B1B0B9F91192890EA4929D2723125F238A652D18DC1C70737990D2B57E5CFAB1194D6A61D7536F74FB82D080F6EE311C7CF81F38F8F8176C9AC7F0C79B2CFCF2CB2A138E9CCD472F170C9C5D85E69E7E139E57B9254EB1DFBC8802BF9AEBB3F327772D08827844A8EA27F6F0EAB168A2076AB6074C30FA281CEECB4F161C1758982B0C42A122E078845B7D2D54DDE29272D366C604E313EC743E41D1EC412CDA86C98934FCF6EB2A846326FBDEF620ADB4FB8AD2D64EC71D54B5A1CDBC97071BBA054C34BEFB7331A2F0BC890EF8B51C8B2E54EA8A2208E261C8E78F858D8D0F20081D90241CB87EFA22F125F800C701E4195F81451938F3E8FA03C9AA626942AC09DC7C0E44A931C8E9BBF666B137C075136F26B3100C560792D2AEE05458A3D8D352C916ACAC6C80593DF82791DC84296F0A8464C11645FD9B22C0F33AB7C6E76DCF1FB10B5D514666FB997B4810047177A03068399C0ADB0326183F9D507C8928D6B8B550D19E9FC93BB38FE2F16F774DE58D8EA017F621996E40426C83986E0CF279EBEC412ECA4D8E0986FDE695026F5E2BE7A6D5CA6A8D4B265B76787D134AD503989DCEC3F27CE94AC1989F4FD96BFC0644C561D756DEB0840D6DF76471360D7A6EAF5F50C773561A41108F9C7CF640C8647A90CD7441D58E7F6AA13885E70B1E51ACF667BC06B092D9F9AE298C3A14B5A349520B524C28360A9D9352E5E86FBDD019E4F23B609ADDB3F74F4ECADCAB1769261819C012CFDD979C2E2CDDDCB3D74225D0CD0E8456B620B85CB3313794FB960B447993F34EA56D49AA80AEEFFEBD615827E56A0F850212F1CAC0C87768009C2088D1824291530F2199D8034D3D38C992509C23CA4482E334DBEBCDA060380F618C26CCD22184029B9092AA2786D1D130C589F30146A9D4B54BE52E98B52F04E339138C09C57EF58209062BF1DC7DC9110CD5D8B5E76755508D3DF033C198F12983F5F56F4FED45315BE78B7D261A904A554E8AA59DBFCB95DE404C94A158FE1CD9100441DC1A1CB8CE6B872026B621CF840285C37D89F802148C9850B6DF7A5488252A902BECC3FCBC0E217FE124295F5CE0576B7639140C73AB0B78EC563B82F17242B6275FC8E0949708062EF22BD50F6165A90ADEB73244222D3B1AFDFEC077225175C62B70DD8751B0A0B1BD0F850A7545110431022A953F05D3FC00E9F49E23143FC38CA7DB702A18F3B306FCFADF3178F54A1884FCC56FB6E0512458646137DA871704E3D5449A4518691661A42F0846385CB2D7420634768E617DBD056F3DD7130C0405A258DEEBE78D06E0FA0FB79A2008E266542A9F3CD5DA2750941E7BA81C9F3023A1B8062818D3539AFD762A07AF5F09303F63D8B3B3DF1E8CC66EA88C6A41CB3A642DFDCF6B544E05C3F34AB920183C6F726B41C35E59D6A0B97B0C91F53ABC7A2180106FD9987DD77DDBA5549858D4B70EA058DA867A9DA24482206E8969FE2968EA01A8992E546B1FFBB852DB7D89B8028F47F5BCF5E4FECD4463E07BB701281EDF130CDDEC7205B30758BA550E38C8FDFA85CC220C09B0FC72D05B144D6E7949B3F9B50D685A1F201E6FC3F35F13100EE3C0F7B705C3340F844A895DD3CA1EA070B8D5C48890A45DCFD769F2D1C6217126418C1C148A52E913A4A57D16557C6251C59FD402BD215EAFCEF9BC06F87CBA8DC76EF539B06BC828F6FA9ABA7DA16BC8E30AC6F41F194730F0DC7D89451879CD33991848720DB65A2CC2886C31C110616222690702C305794B6B99736B2B8A454B53D9CF29977B34C0FD030CF75FC13C6743338C9E66E8BDBEA1776D344D39B4C36B4D3B12690EF8D5A693863F29EE802C59A048964682413C49CAE58F5A46EE8122F74EF2344E716B502470111F138D6F0A46ADD6E58AE69E6D96F6008FDD6A071488290F138C2905B03C150C8C2EA6A7D2F69BC93864D4266C567A202BBBF062220993CFC5C14A40FBDB1F504F666692E07C11C330BAB059DC4551A2EBEA12670F71DC991117438A4EE95ADCD298F59371CB1685DD41C05F8760A80ED1D83624040BD4EC3E30C100140E556622221F73CE9E2CAC7C8A696F08E202984E5C91BBA01B1FFA74D38F86592612B3BE22BCF719361EBBD5E7306B16A76ABB7665AB73A9604CBF4EDBEF588481E5A960783DAC9E09C6DBA934289936138BD640CEB4FEDFD49BCCE05FFF198649261CDE7732E4362DD0F49D7FA46C0B30BA70BEF427211E6F7AC468933DC4D9FF57E968AAB2D757955D3B166ED9D150D35E9AAD0C96E7AAB8D811FC4B2688891D48A5B68109862646996830FB1C55903F1084033A433E7F00B1580B986890588C9059AFC904A30033BE22138CCB930662CB54DFEC42B97671D11C0A840785E24D1A9CF20BC1783191B65F4EA49DD4E73C5FED633DCF578477EFE493972F1220A51B10131A9092EA27F9FCD3892A70E123EE4A880FF26189EB593A7D1CEC470B2ED5ECE0720D024B155859342111DF0635B30765B30B8E70E098028B229C3DDF99A8B85F4B10C455E0EE76B98D2348A6F7492CEE001489F99922CCBFFFB66014CB1D2DA7B7CF2DD83B056745BD9E48D993CF45189643C1C0C1EF67FF15658221C0FC7CE1C2803AEE659ECBEF432A5DB7F1C1EA568F3DB86739460598C491593F9DAADB68C958DD0E06B798D507A1501D22D116AC471B4C0C9AA0691D2814510C2C470C1C1BD34DB708E2D1522C1F69A9E41E88E9CE00538EBBD5C408194618C56F46182812C5F29E5DAC74BE211822F7F2B968BF7999062CF1DCA99F8C7213BF8471CAEE80E32EAEEF9055D6824E6FB346C0C3A7FAC0563CA647413B158254BA69A3AD054BF6CAE2D016678DC1DCBB022CCE19105DAF405A6A38DBC66214F1A5FD484247822046008A8592DD07398BFB53746810F48E188E6118F0FEEDE5631828125A7ECFAED6F72F8C5F201851382BBC272EAEF4F6BC8C7BD0DCD373E083351EAB8392B54E14D5D246D9F58251802CB2873733DCA90F4D55DA5A26DDEE67E4B61D09971D5BE60C7B69AE3498F31ACE38C1F2421122912A48E9260A411FC500A3892F8DBA880862CCC05DEF721B5DC8E5BBD40575C7E0CCA877D31B2CC2B87C9694AA77B9ACBA03B5C6E59180D7AB726F5E29F61FAF3280259EBB2F5D899CB5844CD68250A00CDC6C1EFC2B06F0C19A1D8B0E6D892BD87373BA63EF9DD2706C71BE602FCD17D943BF6647C3553B18283986C7D3D3FA60CAA3C3DB691D66670C9867D140D06F422C5283ACBC0D281A281EA711851355900810C4E304C5229DEE415AB66C7C58B9D5C41DE1F5E8DCDBA93C4C4FE56C3C76AB1DB06B053742929536A8EAE5A939F8408DF3BECDD8EFBD79C0F25B33ADAE03A6598F465944E01A7EF7E2228B8066CFDB69D4706AA7D1C497869B345D67773F82201E29BA7ECC65B423C8AABD138316E3DD0B5E8FCABD9DD6C0E79599609C8F0E502464A565CB4AE3BB82110A6ED9DE775998F3E9762070F9C0394110C4C8C06481CCD883A903281C6E3571C7E0F4D799E90D78EF95C13795EEFB7CD259AB5C372D4ECB59F666C9023C76ABCF110A35B4E0B209C1606980C76E354110C4DD8002A11B47901477C1308EFA85028D5BDC17B31E9D7B3F9DB7FF789D8437AF93B6677238CB09534D30A1E867B3DB97EE43B1B6567DC644E27F43C1128402A57E3058A788902088BB27AF1E69499145162416F70E0AC68B89A4FDF24512D3769C4D8B3DED8E52733BDFEC8E220882B85774F59813596491D78E6CEA8ABA7F9E3381987826D82F7E4F00965EEF5030C478435B8F96415187BBF11104413C289274E0318C23109CDDF16861DE438011050AC5F36722F87CE2602DACFFCD87374E7EFB6D1514AD0AD1280D6213043106C872978B47774056BA145D3C204C2834148BE7BF47E1F56B095E4CC44156AB273C9FA7710982201E1E49DDF5140A8720A5B671A09BA28B07C6E74B0ACF9FADF7D1F0D8AD260882787830BAE0232D4825DB361EBBD504411004711E5C8D1B4EEC001F6ED978EC5613044110C479D6E36D2DCCB780991D8D926010044110978002118DB56DBF7F0BB024C1200882202E652818DB2CBAA8C2EA6ABD8F5B55BA2F11044110C467A2A2C50503D56174C18EDD6A82200882380F8A442CB103E16803A2C20E8B3068BB4A822008E2125030C2D1BA1D08942126EC5094411004415C0E1F6D728140C9F6F355C0920483200882B8149E6F7A42AB8DFEC27209FC7C65108FB769A537411004713938536A75AD01819001D1789B664A1104411097238A4D2E166F4338DCB4F1D8AD26C6181FA77AD0DC53822088FB4314DB5A60B50AACEC4B14618C1D1C1387C5459D5B5ACA6B3373D993E7BF09E0F3C56DAF374A024F10C4FD829145385C8740A83240F170AB8907C4195F5A2F6B7EBF7932F17B0C5E3C8FC1EC5C16D4EC16A86A4DA3088320880701A30A516CF5DFBFDB8470788BBAA6EE194962FF7FA9AD8952ABCFB3FF7F20501CF8BC06040226A8B926F8FD45261C0512088220C603148D52F90016974B105EAD9F24E516EDC5306224950983DCE414858943BADD8FC4B76C3E521FF80355602524D32D50F49D3E8A074618EEC7088220C613140AFF72157C3306CCCF1748386E88CAC4219FB734667D26104C189A8395401D56820D588D344194DB20A2703001C108C3FD184110C4E3830FD68580BF02F3DC26AC86EA83396EB38F75EECB044392763DAA6A71A27866DA7AB8D1E7D7EA108D3440101A90CFEF32B3FA281E32138738890341104F15140926182773B30508F80DF0FB8D133969FD54C281C220CB168B043A9A24EDF593F28E1D6111031F6EC2FA3A8B16C41DD07216144BFBA03261C0E8C2FD284110C4CF078A8494DCE9F3A13A2C721588465B0345C1EE167C403ECEA485F87B6384A09B5D0ECBA128B4355CC0C8C79A363310C43D880B16A4D37BA0170E58B4D0617F2FBEFFD42861234110C437610F5601C52293B120166B030EDA068215E0F99A2DA72D3B2D312191B00B66F810FED2A43B7EC0160ABB1E5DFFE2819EEF69C5D2877EB1746CABDA9E6342AA6D27C4DD412CBA0362720FD2F22E64350B8C6217987038E30A34B640100471479C76DBE003BA62F680090784D75BB012DC8285951AAC300B04B6808F34D006A268D968427CD75E0BB61C0BF3CDCF166ED91166F19875666166C9F4BE9D96F79D32260CCF356DDF0E469AF67A6267105A6F4234B103F1940502B36CBE074C30D0FAC5F2C7B3E8C0348F1D2B540E4814088220C605DC67E37460F8CB68E3B44E8C0E2DCA371DE3B174EBCE4CEEB2CF7CB6B30882194614A7861186FB63098220088220088220088220886BF21FFFF1FF01EE5A3B4D309B7B320000000049454E44AE426082, 0, 0)
SET IDENTITY_INSERT [dbo].[tbl_Temp] OFF
SET IDENTITY_INSERT [dbo].[tbl_unuserCustomer] ON 

INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (82102286, 1)
INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (82102409, 2)
INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (82102086, 3)
INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (82102276, 4)
INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (80000802, 5)
INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (80000799, 6)
INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (80000801, 7)
INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (80000800, 8)
INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (80000798, 9)
INSERT [dbo].[tbl_unuserCustomer] ([Customer], [id]) VALUES (82101707, 10)
SET IDENTITY_INSERT [dbo].[tbl_unuserCustomer] OFF
SET IDENTITY_INSERT [dbo].[tblNKAdetailDirectUp] ON 

INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70306885, N'REDSUN', N'RED SUN ITI-HÀ NỘI', N'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI QUỐC TẾ MẶT TRỜI ĐỎ', N'1213996405', N'RV', 161529145, CAST(N'2017-07-04 00:00:00.000' AS DateTime), N'VN12', CAST(N'2017-07-04 00:00:00.000' AS DateTime), N'SH/17P', N'65543', 819995, N'cnksseoulBT', CAST(N'2017-08-18 00:00:00.000' AS DateTime), 43, N'HÓA ĐƠN', 1)
INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70258226, N'TOUS LES JOURS', N'CJ FRESHWAY', N'CÔNG TY TNHH CJ FRESHWAY VIỆT NAM', N'1213994597', N'RV', 161529745, CAST(N'2017-07-05 00:00:00.000' AS DateTime), N'VN11', CAST(N'2017-07-03 00:00:00.000' AS DateTime), N'EA/17P', N'88742', 428405, N'notien', CAST(N'2017-09-03 00:00:00.000' AS DateTime), 27, N'HÓA ĐƠN', 2)
INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70258226, N'TOUS LES JOURS', N'CJ FRESHWAY', N'CÔNG TY TNHH CJ FRESHWAY VIỆT NAM', N'1213994598', N'RV', 161529746, CAST(N'2017-07-05 00:00:00.000' AS DateTime), N'VN11', CAST(N'2017-07-03 00:00:00.000' AS DateTime), N'EA/17P', N'88741', 782002, N'notien', CAST(N'2017-09-03 00:00:00.000' AS DateTime), 27, N'HÓA ĐƠN', 3)
INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70258226, N'TOUS LES JOURS', N'CJ FRESHWAY', N'CÔNG TY TNHH CJ FRESHWAY VIỆT NAM', N'1213994599', N'RV', 161529747, CAST(N'2017-07-05 00:00:00.000' AS DateTime), N'VN11', CAST(N'2017-07-03 00:00:00.000' AS DateTime), N'EA/17P', N'88740', 523603, N'notien', CAST(N'2017-09-03 00:00:00.000' AS DateTime), 27, N'HÓA ĐƠN', 4)
INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70258226, N'TOUS LES JOURS', N'CJ FRESHWAY', N'CÔNG TY TNHH CJ FRESHWAY VIỆT NAM', N'1213994595', N'RV', 161531481, CAST(N'2017-07-05 00:00:00.000' AS DateTime), N'VN11', CAST(N'2017-07-03 00:00:00.000' AS DateTime), N'EA/17P', N'88801', 428405, N'notien', CAST(N'2017-09-03 00:00:00.000' AS DateTime), 27, N'HÓA ĐƠN', 5)
INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70240863, N'K/S Lemeridien SG', N'K/S Lemeridien SG', N'CHI NHÁNH CÔNG TY TNHH TIẾN PHƯỚC VÀ CHÍN CHÍN MƯƠI', N'1213999112', N'RV', 161537765, CAST(N'2017-07-06 00:00:00.000' AS DateTime), N'VN11', CAST(N'2017-07-04 00:00:00.000' AS DateTime), N'EA/17P', N'89627', 4300010, N'notien,giaosang', CAST(N'2017-08-05 00:00:00.000' AS DateTime), 56, N'HÓA ĐƠN', 6)
INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70240863, N'K/S Lemeridien SG', N'K/S Lemeridien SG', N'CHI NHÁNH CÔNG TY TNHH TIẾN PHƯỚC VÀ CHÍN CHÍN MƯƠI', N'1213999113', N'RV', 161537766, CAST(N'2017-07-06 00:00:00.000' AS DateTime), N'VN11', CAST(N'2017-07-04 00:00:00.000' AS DateTime), N'EA/17P', N'89626', 740003, N'notien', CAST(N'2017-08-05 00:00:00.000' AS DateTime), 56, N'HÓA ĐƠN', 7)
INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70240863, N'K/S Lemeridien SG', N'K/S Lemeridien SG', N'CHI NHÁNH CÔNG TY TNHH TIẾN PHƯỚC VÀ CHÍN CHÍN MƯƠI', N'1214003898', N'RV', 161544361, CAST(N'2017-07-07 00:00:00.000' AS DateTime), N'VN11', CAST(N'2017-07-05 00:00:00.000' AS DateTime), N'EA/17P', N'90395', 6020014, N'notien', CAST(N'2017-08-06 00:00:00.000' AS DateTime), 55, N'HÓA ĐƠN', 8)
INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70240863, N'K/S Lemeridien SG', N'K/S Lemeridien SG', N'CHI NHÁNH CÔNG TY TNHH TIẾN PHƯỚC VÀ CHÍN CHÍN MƯƠI', N'1214003899', N'RV', 161544362, CAST(N'2017-07-07 00:00:00.000' AS DateTime), N'VN11', CAST(N'2017-07-05 00:00:00.000' AS DateTime), N'EA/17P', N'90396', 6020014, N'notien', CAST(N'2017-08-06 00:00:00.000' AS DateTime), 55, N'HÓA ĐƠN', 9)
INSERT [dbo].[tblNKAdetailDirectUp] ([Account], [Group], [Group Letter], [Name letter], [Assignment], [Document Type], [Document Number], [Document Date], [Business Area], [PF Inv Date], [Invoice Registration No#], [PF Inv Number], [Content + VAT], [Extended Reference], [Net due date], [Arrears after net due date], [REMARK], [id]) VALUES (70258226, N'TOUS LES JOURS', N'CJ FRESHWAY', N'CÔNG TY TNHH CJ FRESHWAY VIỆT NAM', N'1214003871', N'RV', 161543087, CAST(N'2017-07-07 00:00:00.000' AS DateTime), N'VN11', CAST(N'2017-07-05 00:00:00.000' AS DateTime), N'EA/17P', N'90453', 306004, N'notien', CAST(N'2017-09-05 00:00:00.000' AS DateTime), 25, N'HÓA ĐƠN', 10)
SET IDENTITY_INSERT [dbo].[tblNKAdetailDirectUp] OFF
ALTER TABLE [dbo].[tblFBL5Nnew] ADD  CONSTRAINT [DF_tblFBL5Nnew_Tempmark]  DEFAULT ((0)) FOR [Tempmark]
GO
ALTER TABLE [dbo].[tblNKACustomer] ADD  CONSTRAINT [DF_tblNKACustomer_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[tbl_Productlist]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Productlist_tbl_EmptyGroup] FOREIGN KEY([Empty Group])
REFERENCES [dbo].[tbl_EmptyGroup] ([id])
GO
ALTER TABLE [dbo].[tbl_Productlist] CHECK CONSTRAINT [FK_tbl_Productlist_tbl_EmptyGroup]
GO
/****** Object:  StoredProcedure [dbo].[autoupdatedepositthismonth]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	
CREATE procedure [dbo].[autoupdatedepositthismonth]
as
begin
 

 IF OBJECT_ID(N'tempdb..#TempResults', N'U') IS NOT NULL 
        DROP TABLE #TempResults;

		CREATE TABLE #TempResults
			(
			  [Posting Date] date,
		codeGroup float
			
			)



 begin -- update fbl5nthisspriodby fbl5n2
 insert into #TempResults ([Posting Date],codeGroup)
 select tblFBL5Nnewthisperiod.[Posting Date],tblFBL5Nnewthisperiod.codeGroup
 from tblFBL5Nnewthisperiod
 group by tblFBL5Nnewthisperiod.[Posting Date],tblFBL5Nnewthisperiod.codeGroup
 having sum(tblFBL5Nnewthisperiod.[Empty Amount])  <> 0
  end


	begin
		update tblFBL5Nnewthisperiod 
		set tblFBL5Nnewthisperiod.[Deposit amount]=	tblFBL5Nnewthisperiod.[Empty Amount],
	        tblFBL5Nnewthisperiod.[Empty Amount Notmach] =0
		from  tblFBL5Nnewthisperiod,#TempResults
		where tblFBL5Nnewthisperiod.[Posting Date] = #TempResults.[Posting Date]
		and tblFBL5Nnewthisperiod.codeGroup = #TempResults.codeGroup-- (select #TempResults.[Posting Date] from #TempResults)
	end
		
	--	begin
	--	update tblFBL5Nnewthisperiod 
	--	set tblFBL5Nnewthisperiod.[Deposit amount]=	0,--tblFBL5Nnewthisperiod.[Empty Amount],
	--        tblFBL5Nnewthisperiod.[Empty Amount Notmach] =tblFBL5Nnewthisperiod.[Empty Amount]
	--	from  tblFBL5Nnewthisperiod,#TempResults
	--	where not(tblFBL5Nnewthisperiod.[Posting Date] = #TempResults.[Posting Date]
	--	and tblFBL5Nnewthisperiod.codeGroup = #TempResults.codeGroup)-- (select #TempResults.[Posting Date] from #TempResults)
	--end
		
			 --- select * from  #TempResults 
		IF OBJECT_ID(N'tempdb..#TempResults', N'U') IS NOT NULL 
        DROP TABLE #TempResults;
	


	


end


GO
/****** Object:  StoredProcedure [dbo].[ClearABbelanceZezo]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[ClearABbelanceZezo]
as
begin
       begin
		update tblFBL5N
		set tblFBL5N.[Completed use] =0
		 FROM tblFBL5N 
 
	
		end




		begin
		update tblFBL5N
		set tblFBL5N.[Completed use] =1
		 FROM tblFBL5N 
 
		WHERE tblFBL5N.[Document Type] ='AB' and tblFBL5N.[Document Number] IN
		(SELECT tblFBL5N.[Document Number] FROM tblFBL5N where  tblFBL5N.[Document Type] ='AB' GROUP BY tblFBL5N.[Document Number],tblFBL5N.Account  HAVING sum(tblFBL5N.[Amount in local currency]) = 0)

		end


		begin

		delete  from tblFBL5N
		where tblFBL5N.[Completed use] =1

		end


end
GO
/****** Object:  StoredProcedure [dbo].[copyfromThismonthtoFbl5new]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
CREATE procedure [dbo].[copyfromThismonthtoFbl5new]
as
begin

begin
insert into tblFBL5Nnew (tblFBL5Nnew.Account,tblFBL5Nnew.name,tblFBL5Nnew.[Adjusted amount],tblFBL5Nnew.[Amount in local currency],tblFBL5Nnew.Assignment,tblFBL5Nnew.Binhpmicc02,tblFBL5Nnew.binhpmix9l,tblFBL5Nnew.[Business Area],tblFBL5Nnew.Chaivo1lit,tblFBL5Nnew.Chaivothuong,tblFBL5Nnew.[Deposit amount],tblFBL5Nnew.[Document Number],tblFBL5Nnew.[Document Type],tblFBL5Nnew.[Empty Amount],tblFBL5Nnew.[Empty Amount Notmach],tblFBL5Nnew.[Formula invoice date],tblFBL5Nnew.[Fullgood amount],tblFBL5Nnew.Invoice,tblFBL5Nnew.joy20l,tblFBL5Nnew.Ketnhua1lit,tblFBL5Nnew.Ketnhuathuong,tblFBL5Nnew.Ketvolit,tblFBL5Nnew.Ketvothuong,tblFBL5Nnew.paletnhua,tblFBL5Nnew.palletgo,tblFBL5Nnew.[Payment amount],tblFBL5Nnew.[Posting Date],tblFBL5Nnew.Remark,tblFBL5Nnew.SoDelivery,tblFBL5Nnew.userupdate,tblFBL5Nnew.[Invoice Amount])
select tblFBL5Nnewthisperiod.Account,tblFBL5Nnewthisperiod.name,tblFBL5Nnewthisperiod.[Adjusted amount],tblFBL5Nnewthisperiod.[Amount in local currency],tblFBL5Nnewthisperiod.Assignment,tblFBL5Nnewthisperiod.Binhpmicc02,tblFBL5Nnewthisperiod.binhpmix9l,tblFBL5Nnewthisperiod.[Business Area],tblFBL5Nnewthisperiod.Chaivo1lit,tblFBL5Nnewthisperiod.Chaivothuong,tblFBL5Nnewthisperiod.[Deposit amount],tblFBL5Nnewthisperiod.[Document Number],tblFBL5Nnewthisperiod.[Document Type],tblFBL5Nnewthisperiod.[Empty Amount],tblFBL5Nnewthisperiod.[Empty Amount Notmach],tblFBL5Nnewthisperiod.[Formula invoice date],tblFBL5Nnewthisperiod.[Fullgood amount],tblFBL5Nnewthisperiod.Invoice,tblFBL5Nnewthisperiod.joy20l,tblFBL5Nnewthisperiod.Ketnhua1lit,tblFBL5Nnewthisperiod.Ketnhuathuong,tblFBL5Nnewthisperiod.Ketvolit,tblFBL5Nnewthisperiod.Ketvothuong,tblFBL5Nnewthisperiod.paletnhua,tblFBL5Nnewthisperiod.palletgo,tblFBL5Nnewthisperiod.[Payment amount],tblFBL5Nnewthisperiod.[Posting Date],tblFBL5Nnewthisperiod.Remark,tblFBL5Nnewthisperiod.SoDelivery,tblFBL5Nnewthisperiod.userupdate,tblFBL5Nnewthisperiod.[Invoice Amount] from tblFBL5Nnewthisperiod

end

begin
delete from tblFBL5Nnewthisperiod
end


end

GO
/****** Object:  StoredProcedure [dbo].[deleteLisColandEmptydifferentinThis]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[deleteLisColandEmptydifferentinThis]
as
begin

delete from tblFBL5Nnewthisperiod
where tblFBL5Nnewthisperiod.[COL value] <> tblFBL5Nnewthisperiod.[Empty Amount]

end


GO
/****** Object:  StoredProcedure [dbo].[DeleteTempFBL5nnew]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure  [dbo].[DeleteTempFBL5nnew]
as


begin
delete from tblFBL5Nnew
where tblFBL5Nnew.Tempmark =1

end
GO
/****** Object:  StoredProcedure [dbo].[DeleteVATEDLPandFBL5nDocexistinFbl5nthis]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[DeleteVATEDLPandFBL5nDocexistinFbl5nthis]
as
begin

delete from tblVat
where tblVat.[SAP Invoice Number] in (Select tblFBL5Nnewthisperiod.[Document Number] from tblFBL5Nnewthisperiod)

end

begin

delete from tblFBL5N
where tblFBL5N.[Document Number] in (Select tblFBL5Nnewthisperiod.[Document Number] from tblFBL5Nnewthisperiod)

end

begin

delete  from tblEDLP
where tblEDLP.[Invoice Doc Nr] in (Select tblFBL5Nnewthisperiod.[Document Number] from tblFBL5Nnewthisperiod)

end

GO
/****** Object:  StoredProcedure [dbo].[insertFbl5nthisfromFBL5n]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[insertFbl5nthisfromFBL5n]
as

begin

insert into tblFBL5Nnewthisperiod (tblFBL5Nnewthisperiod.Account,tblFBL5Nnewthisperiod.[Amount in local currency],tblFBL5Nnewthisperiod.Assignment,tblFBL5Nnewthisperiod.[Business Area],tblFBL5Nnewthisperiod.[Document Number],tblFBL5Nnewthisperiod.[Document Type],tblFBL5Nnewthisperiod.[Posting Date])
select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] from tblFBL5N

end
GO
/****** Object:  StoredProcedure [dbo].[insertFbl5nthisfromFBL5nSumRpt]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure  [dbo].[insertFbl5nthisfromFBL5nSumRpt]
as

Begin

		begin
		delete  from  tblFBL5NthisperiodSum

		end

		-- insert toongr vaof 
		begin

		insert into tblFBL5NthisperiodSum (tblFBL5NthisperiodSum.Account)
		select tblFBL5Nnewthisperiod.Account from tblFBL5Nnewthisperiod
		group by tblFBL5Nnewthisperiod.Account

		end

		begin
		update  tblFBL5beginbalace
		set tblFBL5beginbalace.cal = 0
		from tblFBL5beginbalace
		end

		begin
		update  tblFBL5beginbalace
		set tblFBL5beginbalace.cal = 1
		from tblFBL5beginbalace
		where tblFBL5beginbalace.Account not in (select tblFBL5NthisperiodSum.Account from tblFBL5NthisperiodSum)
		end


        begin
		insert into tblFBL5NthisperiodSum (tblFBL5NthisperiodSum.Account)
		select tblFBL5beginbalace.Account 
		from tblFBL5beginbalace
		where tblFBL5beginbalace.cal = 1
		group by tblFBL5beginbalace.Account

		end
    --- dat cos account tong de bat day update tinh dau ky
    -- tinh begin
         begin 
         update tblFBL5NthisperiodSum 
         set tblFBL5NthisperiodSum.Binhpmicc02bg = isnull((select sum(tblFBL5beginbalace.Binhpmicc02) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.binhpmix9lbg = isnull((select sum(tblFBL5beginbalace.binhpmix9l) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketvolitbg = isnull((select sum(tblFBL5beginbalace.Ketvolit) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
	       tblFBL5NthisperiodSum.Chaivo1litbg = isnull((select sum(tblFBL5beginbalace.Chaivo1lit) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Chaivothuongbg = isnull((select sum(tblFBL5beginbalace.Chaivothuong) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Deposit amountbg] = isnull((select sum(tblFBL5beginbalace.[Deposit amount]) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Empty Amountbg] =isnull((select sum(tblFBL5beginbalace.[Empty Amount]) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[FBL5N amountbg] = isnull((select sum(tblFBL5beginbalace.[Amount in local currency]) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Fullgood amountbg] = isnull((select sum(tblFBL5beginbalace.[Fullgood amount]) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.joy20lbg = isnull((select sum(tblFBL5beginbalace.joy20l) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketnhua1litbg = isnull((select sum(tblFBL5beginbalace.Ketnhua1lit) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketnhuathuongbg = isnull((select sum(tblFBL5beginbalace.Ketnhuathuong) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketvothuongbg = isnull((select sum(tblFBL5beginbalace.Ketvothuong) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.paletnhuabg = isnull((select sum(tblFBL5beginbalace.paletnhua) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.palletgobg = isnull((select sum(tblFBL5beginbalace.palletgo) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
	 	   tblFBL5NthisperiodSum.[Adj amountbg] = isnull((select sum(tblFBL5beginbalace.[Adjusted amount]) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Payment amountbg] = isnull((select sum(tblFBL5beginbalace.[Payment amount]) from tblFBL5beginbalace where  tblFBL5beginbalace.Account =tblFBL5NthisperiodSum.Account ),0)
	
        from tblFBL5NthisperiodSum
		 end
	-- tinh begin
	-- tinh phat sinh

         begin 
         update tblFBL5NthisperiodSum 
         set tblFBL5NthisperiodSum.Binhpmicc02ps = isnull((select sum(tblFBL5Nnewthisperiod.Binhpmicc02) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.binhpmix9lps = isnull((select sum(tblFBL5Nnewthisperiod.binhpmix9l) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		     tblFBL5NthisperiodSum.Ketvolitps = isnull((select sum(tblFBL5Nnewthisperiod.Ketvolit) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
	       tblFBL5NthisperiodSum.Chaivo1litps = isnull((select sum(tblFBL5Nnewthisperiod.Chaivo1lit) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Chaivothuongps = isnull((select sum(tblFBL5Nnewthisperiod.Chaivothuong) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Deposit amountps] = isnull((select sum(tblFBL5Nnewthisperiod.[Deposit amount]) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Empty Amountps] =isnull((select sum(tblFBL5Nnewthisperiod.[Empty Amount]) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[FBL5N amountps] = isnull((select sum(tblFBL5Nnewthisperiod.[Amount in local currency]) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Fullgood amountps] = isnull((select sum(tblFBL5Nnewthisperiod.[Fullgood amount]) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.joy20lps = isnull((select sum(tblFBL5Nnewthisperiod.joy20l) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketnhua1litps = isnull((select sum(tblFBL5Nnewthisperiod.Ketnhua1lit) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketnhuathuongps = isnull((select sum(tblFBL5Nnewthisperiod.Ketnhuathuong) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketvothuongps = isnull((select sum(tblFBL5Nnewthisperiod.Ketvothuong) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.paletnhuaps = isnull((select sum(tblFBL5Nnewthisperiod.paletnhua) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.palletgops = isnull((select sum(tblFBL5Nnewthisperiod.palletgo) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
	 	   tblFBL5NthisperiodSum.[Adj amountps] = isnull((select sum(tblFBL5Nnewthisperiod.[Adjusted amount]) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Payment amountps] = isnull((select sum(tblFBL5Nnewthisperiod.[Payment amount]) from tblFBL5Nnewthisperiod where  tblFBL5Nnewthisperiod.Account =tblFBL5NthisperiodSum.Account ),0)
	
        from tblFBL5NthisperiodSum
		 end

	-- tinh phat sinh
	-- tinh dau ky 
	
         begin 
         update tblFBL5NthisperiodSum 
         set tblFBL5NthisperiodSum.Binhpmicc02dk = isnull((select sum(tblFBL5Nnew.Binhpmicc02) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.binhpmix9ldk = isnull((select sum(tblFBL5Nnew.binhpmix9l) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		         tblFBL5NthisperiodSum.Ketvolitdk = isnull((select sum(tblFBL5Nnew.Ketvolit) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
	       tblFBL5NthisperiodSum.Chaivo1litdk = isnull((select sum(tblFBL5Nnew.Chaivo1lit) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Chaivothuongdk = isnull((select sum(tblFBL5Nnew.Chaivothuong) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Deposit amountdk] = isnull((select sum(tblFBL5Nnew.[Deposit amount]) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Empty Amountdk] =isnull((select sum(tblFBL5Nnew.[Empty Amount]) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[FBL5N amountdk] = isnull((select sum(tblFBL5Nnew.[Amount in local currency]) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Fullgood amountdk] = isnull((select sum(tblFBL5Nnew.[Fullgood amount]) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.joy20ldk = isnull((select sum(tblFBL5Nnew.joy20l) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketnhua1litdk = isnull((select sum(tblFBL5Nnew.Ketnhua1lit) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketnhuathuongdk = isnull((select sum(tblFBL5Nnew.Ketnhuathuong) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.Ketvothuongdk = isnull((select sum(tblFBL5Nnew.Ketvothuong) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.paletnhuadk = isnull((select sum(tblFBL5Nnew.paletnhua) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.palletgodk = isnull((select sum(tblFBL5Nnew.palletgo) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
	 	   tblFBL5NthisperiodSum.[Adj amountdk] = isnull((select sum(tblFBL5Nnew.[Adjusted amount]) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0),
		   tblFBL5NthisperiodSum.[Payment amountdk] = isnull((select sum(tblFBL5Nnew.[Payment amount]) from tblFBL5Nnew where  tblFBL5Nnew.Account =tblFBL5NthisperiodSum.Account ),0)
	
        from tblFBL5NthisperiodSum
		 end

	 

	--tinh dau ky 
	
	-- tinh cuoi ky 
	
         begin 
         update tblFBL5NthisperiodSum 
         set tblFBL5NthisperiodSum.Binhpmicc02 = tblFBL5NthisperiodSum.Binhpmicc02dk+tblFBL5NthisperiodSum.Binhpmicc02ps+tblFBL5NthisperiodSum.Binhpmicc02bg ,
		   tblFBL5NthisperiodSum.binhpmix9l = tblFBL5NthisperiodSum.binhpmix9lps +tblFBL5NthisperiodSum.binhpmix9ldk +tblFBL5NthisperiodSum.binhpmix9lbg,
		   tblFBL5NthisperiodSum.Ketvolit = tblFBL5NthisperiodSum.Ketvolitps +tblFBL5NthisperiodSum.Ketvolitdk+tblFBL5NthisperiodSum.Ketvolitbg,  
	       tblFBL5NthisperiodSum.Chaivo1lit = tblFBL5NthisperiodSum.Chaivo1litps +tblFBL5NthisperiodSum.Chaivo1litdk+tblFBL5NthisperiodSum.Chaivo1litbg,
		   tblFBL5NthisperiodSum.Chaivothuong = tblFBL5NthisperiodSum.Chaivothuongps +tblFBL5NthisperiodSum.Chaivothuongdk+ tblFBL5NthisperiodSum.Chaivothuongbg,
		   tblFBL5NthisperiodSum.Deposit_amount = tblFBL5NthisperiodSum.[Deposit amountps] +tblFBL5NthisperiodSum.[Deposit amountdk] +tblFBL5NthisperiodSum.[Deposit amountbg], 
		   tblFBL5NthisperiodSum.[Empty Amount] =tblFBL5NthisperiodSum.[Empty Amountps] +tblFBL5NthisperiodSum.[Empty Amountdk]+tblFBL5NthisperiodSum.[Empty Amountbg],
		   tblFBL5NthisperiodSum.[FBL5N amount] = tblFBL5NthisperiodSum.[FBL5N amountps] +tblFBL5NthisperiodSum.[FBL5N amountdk] +tblFBL5NthisperiodSum.[FBL5N amountbg],
		   tblFBL5NthisperiodSum.[Fullgood amount] = tblFBL5NthisperiodSum.[Fullgood amountps] +tblFBL5NthisperiodSum.[Fullgood amountdk] +tblFBL5NthisperiodSum.[Fullgood amountbg],
		   tblFBL5NthisperiodSum.joy20l = tblFBL5NthisperiodSum.joy20lps +tblFBL5NthisperiodSum.joy20ldk +tblFBL5NthisperiodSum.joy20lbg,
		   tblFBL5NthisperiodSum.Ketnhua1lit = tblFBL5NthisperiodSum.Ketnhua1litps +tblFBL5NthisperiodSum.Ketnhua1litdk +tblFBL5NthisperiodSum.Ketnhua1litbg,
		   tblFBL5NthisperiodSum.Ketnhuathuong = tblFBL5NthisperiodSum.Ketnhuathuongps  +tblFBL5NthisperiodSum.Ketnhuathuongdk +tblFBL5NthisperiodSum.Ketnhuathuongbg, 
		   tblFBL5NthisperiodSum.Ketvothuong = tblFBL5NthisperiodSum.Ketvothuongps +tblFBL5NthisperiodSum.Ketvothuongdk +tblFBL5NthisperiodSum.Ketvothuongbg,
		   tblFBL5NthisperiodSum.paletnhua = tblFBL5NthisperiodSum.paletnhuaps +tblFBL5NthisperiodSum.paletnhuadk+ tblFBL5NthisperiodSum.paletnhuabg,
		   tblFBL5NthisperiodSum.palletgo = tblFBL5NthisperiodSum.palletgops  +tblFBL5NthisperiodSum.palletgodk +tblFBL5NthisperiodSum.palletgobg,
	 	   tblFBL5NthisperiodSum.[Adj amount] = tblFBL5NthisperiodSum.[Adj amountps] +tblFBL5NthisperiodSum.[Adj amountdk]  +tblFBL5NthisperiodSum.[Adj amountbg] ,
		   tblFBL5NthisperiodSum.[Payment amount] = tblFBL5NthisperiodSum.[Payment amountps] +tblFBL5NthisperiodSum.[Payment amountdk]+tblFBL5NthisperiodSum.[Payment amountbg]
	
        from tblFBL5NthisperiodSum
		 end


	-- tinh cuoi ky

	-- tinh real balabce
	    begin 
         update tblFBL5NthisperiodSum 
         set 
		 tblFBL5NthisperiodSum.RealBalance = tblFBL5NthisperiodSum.Deposit_amount+tblFBL5NthisperiodSum.[FBL5N amount]+tblFBL5NthisperiodSum.Binhpmicc02bg 
		
         from tblFBL5NthisperiodSum
		 end

	-- tinh real balance
	-- tinh update customernaem
	    begin 
         update tblFBL5NthisperiodSum 
         set 
		 tblFBL5NthisperiodSum.Customer_Name = (select left(max(tblCustomer.[Name 1]),200) from tblCustomer where tblCustomer.Customer = tblFBL5NthisperiodSum.Account),
		tblFBL5NthisperiodSum.Reportsend = (select top 1 tblCustomer.Reportsend from tblCustomer where tblCustomer.Customer = tblFBL5NthisperiodSum.Account  and tblCustomer.Reportsend = 'true')
         from tblFBL5NthisperiodSum
		 end

	-- tinh real balance

end
-- tih cuoi ky voi cac co moi phat sinh




GO
/****** Object:  StoredProcedure [dbo].[inserttblvatstatusfalseintblCustomerTmp]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure  [dbo].[inserttblvatstatusfalseintblCustomerTmp]
as

begin

insert into tblCustomerTmp(tblCustomerTmp.[Name 1],tblCustomerTmp.Customer,tblCustomerTmp.SOrg,tblCustomerTmp.Address)
select max(tblVat.[Customer Name]),tblVat.[Customer Number],tblVat.Region,max(tblVat.[Street Address]) from tblVat
where tblVat.Statuscheck= 1
group by tblVat.[Customer Number], tblVat.Region

end

GO
/****** Object:  StoredProcedure [dbo].[NKAupdateNameletter]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure  [dbo].[NKAupdateNameletter]
as
begin


update tblNKAArletterRpts 
set tblNKAArletterRpts.[Nameletter] = tblNKACustomer.[Name in letter],
tblNKAArletterRpts.[stt] = tblNKACustomer.No
--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
from tblNKAArletterRpts,tblNKACustomer
where tblNKAArletterRpts.GroupLetter = tblNKACustomer.[Group Letter] 
end
	

GO
/****** Object:  StoredProcedure [dbo].[RedoDEPOSITverify]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


	
CREATE procedure [dbo].[RedoDEPOSITverify]
( @fromdate DateTime,
  @todate DateTime
)


as
begin



		 begin -- xóa toàn bo doc tren tblFBL5Nnewthisperiod not in fbl5n
				delete from tblFBL5Nnewthisperiod
			--	where  tblFBL5Nnewthisperiod.[Document Number] not in (select tblFBL5N.[Document Number] from tblFBL5N)
		 end


		 -- upload nguwowcij lai thasng do
		begin

		insert into tblFBL5Nnewthisperiod (tblFBL5Nnewthisperiod.Account,tblFBL5Nnewthisperiod.name,tblFBL5Nnewthisperiod.[Adjusted amount],tblFBL5Nnewthisperiod.[Amount in local currency],tblFBL5Nnewthisperiod.Assignment,tblFBL5Nnewthisperiod.Binhpmicc02,tblFBL5Nnewthisperiod.binhpmix9l,tblFBL5Nnewthisperiod.[Business Area],tblFBL5Nnewthisperiod.Chaivo1lit,tblFBL5Nnewthisperiod.Chaivothuong,tblFBL5Nnewthisperiod.[Deposit amount],tblFBL5Nnewthisperiod.[Document Number],tblFBL5Nnewthisperiod.[Document Type],tblFBL5Nnewthisperiod.[Empty Amount],tblFBL5Nnewthisperiod.[Empty Amount Notmach],tblFBL5Nnewthisperiod.[Formula invoice date],tblFBL5Nnewthisperiod.[Fullgood amount],tblFBL5Nnewthisperiod.Invoice,tblFBL5Nnewthisperiod.joy20l,tblFBL5Nnewthisperiod.Ketnhua1lit,tblFBL5Nnewthisperiod.Ketnhuathuong,tblFBL5Nnewthisperiod.Ketvolit,tblFBL5Nnewthisperiod.Ketvothuong,tblFBL5Nnewthisperiod.paletnhua,tblFBL5Nnewthisperiod.palletgo,tblFBL5Nnewthisperiod.[Payment amount],tblFBL5Nnewthisperiod.[Posting Date],tblFBL5Nnewthisperiod.Remark,tblFBL5Nnewthisperiod.SoDelivery,tblFBL5Nnewthisperiod.userupdate,tblFBL5Nnewthisperiod.[Invoice Amount])
		select tblFBL5Nnew.Account,tblFBL5Nnew.name,tblFBL5Nnew.[Adjusted amount],tblFBL5Nnew.[Amount in local currency],tblFBL5Nnew.Assignment,tblFBL5Nnew.Binhpmicc02,tblFBL5Nnew.binhpmix9l,tblFBL5Nnew.[Business Area],tblFBL5Nnew.Chaivo1lit,tblFBL5Nnew.Chaivothuong,tblFBL5Nnew.[Deposit amount],tblFBL5Nnew.[Document Number],tblFBL5Nnew.[Document Type],tblFBL5Nnew.[Empty Amount],tblFBL5Nnew.[Empty Amount Notmach],tblFBL5Nnew.[Formula invoice date],tblFBL5Nnew.[Fullgood amount],tblFBL5Nnew.Invoice,tblFBL5Nnew.joy20l,tblFBL5Nnew.Ketnhua1lit,tblFBL5Nnew.Ketnhuathuong,tblFBL5Nnew.Ketvolit,tblFBL5Nnew.Ketvothuong,tblFBL5Nnew.paletnhua,tblFBL5Nnew.palletgo,tblFBL5Nnew.[Payment amount],tblFBL5Nnew.[Posting Date],tblFBL5Nnew.Remark,tblFBL5Nnew.SoDelivery,tblFBL5Nnew.userupdate,tblFBL5Nnew.[Invoice Amount] from tblFBL5Nnew
		where tblFBL5Nnew.[Posting Date] >= @fromdate and  tblFBL5Nnew.[Posting Date]  <= @todate
		 end


		 -- xoa thasng do
		begin
			delete from tblFBL5Nnew
			where tblFBL5Nnew.[Posting Date] >= @fromdate and  tblFBL5Nnew.[Posting Date]  <= @todate
		end

end



GO
/****** Object:  StoredProcedure [dbo].[tbl_ARdetalheaderRptcaculationinserts]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE procedure [dbo].[tbl_ARdetalheaderRptcaculationinserts]
( @returndate date,
@fromdate date,
@todate date,
@byregion int
-- @Document_Number float
)

as

Begin

    
	
		begin

		insert into tbl_ARdetalheaderRpt (tbl_ARdetalheaderRpt.[address],tbl_ARdetalheaderRpt.custcodeGRoup, tbl_ARdetalheaderRpt.customername,tbl_ARdetalheaderRpt.Fromdate, tbl_ARdetalheaderRpt.Todate,tbl_ARdetalheaderRpt.region,tbl_ARdetalheaderRpt.phone,tbl_ARdetalheaderRpt.code,tbl_ARdetalheaderRpt.No)
		select 	LEFT(max(tblCustomer.[Address]),200),tblCustomer.Cusromergroup,LEFT(max(tblCustomer.[Name 1]),200),@fromdate,@todate,'VN',LEFT(max(tblCustomer.[Telephone 1]),20),max(tblCustomer.Customer), isnull((select max(tbl_ArletterRpt.No) from tbl_ArletterRpt where tbl_ArletterRpt.custcodegRoup = tblCustomer.Cusromergroup),-1)
	    from    tblCustomer
		where  tblCustomer.Reportsend = 'True' and @byregion = 0 and tblCustomer.Customer not in (select tbl_CustomerGroup.Customercode from tbl_CustomerGroup)
		group by tblCustomer.Cusromergroup-- , tblCustomer.SOrg
		end


		
		begin

		insert into tbl_ARdetalheaderRpt (tbl_ARdetalheaderRpt.[address],tbl_ARdetalheaderRpt.custcodeGRoup, tbl_ARdetalheaderRpt.customername,tbl_ARdetalheaderRpt.Fromdate, tbl_ARdetalheaderRpt.Todate,tbl_ARdetalheaderRpt.region,tbl_ARdetalheaderRpt.phone,tbl_ARdetalheaderRpt.code,tbl_ARdetalheaderRpt.No)
		select 	max(tbl_CustomerGroup.AdressGroup),tbl_CustomerGroup.Customergropcode,max(tbl_CustomerGroup.[Group Name]),@fromdate,@todate,'VN',max(tbl_CustomerGroup.Phone),max(tbl_CustomerGroup.Customercode), isnull((select max(tbl_ArletterRpt.No) from tbl_ArletterRpt where tbl_ArletterRpt.custcodegRoup = tbl_CustomerGroup.Customergropcode),-1)
	    from    tbl_CustomerGroup
		where   @byregion = 0 --and tbl_CustomerGroup.Customercode  in (select tblCustomer.Customer from tblCustomer where  tblCustomer.Reportsend = 'True')
		group by tbl_CustomerGroup.Customergropcode-- , tbl_CustomerGroup.SOrg
		end

			
		begin

		insert into tbl_ARdetalheaderRpt (tbl_ARdetalheaderRpt.[address],tbl_ARdetalheaderRpt.custcodeGRoup, tbl_ARdetalheaderRpt.customername,tbl_ARdetalheaderRpt.Fromdate, tbl_ARdetalheaderRpt.Todate,tbl_ARdetalheaderRpt.region,tbl_ARdetalheaderRpt.phone,tbl_ARdetalheaderRpt.code,tbl_ARdetalheaderRpt.No)
		select 	max(tbl_CustomerGroup.AdressGroup),tbl_CustomerGroup.Customergropcode,max(tbl_CustomerGroup.[Group Name]),@fromdate,@todate,max(tbl_CustomerGroup.Region),max(tbl_CustomerGroup.Phone),max(tbl_CustomerGroup.Customercode), isnull((select max(tbl_ArletterRpt.No) from tbl_ArletterRpt where tbl_ArletterRpt.custcodegRoup = tbl_CustomerGroup.Customergropcode),-1)
	    from    tbl_CustomerGroup
		where   @byregion = 1-- and tbl_CustomerGroup.Customercode  in (select tblCustomer.Customer from tblCustomer where  tblCustomer.Reportsend = 'True')
		group by tbl_CustomerGroup.Customergropcode-- , tbl_CustomerGroup.SOrg
		end

		
		begin

		insert into tbl_ARdetalheaderRpt (tbl_ARdetalheaderRpt.[address],tbl_ARdetalheaderRpt.custcodeGRoup, tbl_ARdetalheaderRpt.customername,tbl_ARdetalheaderRpt.Fromdate, tbl_ARdetalheaderRpt.Todate,tbl_ARdetalheaderRpt.region,tbl_ARdetalheaderRpt.phone,tbl_ARdetalheaderRpt.code,tbl_ARdetalheaderRpt.No)
		select 	max(tblCustomer.[Address]),tblCustomer.Cusromergroup,max(tblCustomer.[Name 1]),@fromdate,@todate,tblCustomer.SOrg,max(tblCustomer.[Telephone 1]),max(tblCustomer.Customer), isnull((select max(tbl_ArletterRpt.No) from tbl_ArletterRpt where tbl_ArletterRpt.custcodegRoup = tblCustomer.Cusromergroup),-1)
	    from    tblCustomer
		where  tblCustomer.Reportsend = 'True' and @byregion = 1 and tblCustomer.Customer not in (select tbl_CustomerGroup.Customercode from tbl_CustomerGroup)
		group by tblCustomer.Cusromergroup , tblCustomer.SOrg
		end
	-- iif((len(cast(convert(int,tblCustomer.Cusromergroup) as VArchar(20))) >len(cast(convert(int,max(tblCustomer.Customer))as VArchar(20)))),'VN',MAX(tblCustomer.SOrg))
	--	len(convert(int,tblCustomer.Customer)as VArchar(20))

	    begin
		
	    update tbl_ARdetalheaderRpt 
	
		set 
		  tbl_ARdetalheaderRpt.dknuoc =isnull((select sum(isnull(tblFBL5Nnew.[Invoice Amount],0)) +  sum(isnull(tblFBL5Nnew.[Adjusted amount],0)) +  sum(isnull(tblFBL5Nnew.[Payment amount],0)) +  sum(isnull(tblFBL5Nnew.[Deposit amount],0))  from tblFBL5Nnew where tblFBL5Nnew.codeGroup = tbl_ARdetalheaderRpt.custcodegRoup and tblFBL5Nnew.[Posting Date] < @fromdate group by tblFBL5Nnew.codeGroup),0)+
	                                	isnull((select sum(isnull(tblFBL5beginbalace.[Adjusted amount],0))+sum(isnull(tblFBL5beginbalace.[Deposit amount],0))+sum(isnull(tblFBL5beginbalace.[Fullgood amount],0))+sum(isnull(tblFBL5beginbalace.[Payment amount],0)) from tblFBL5beginbalace where tblFBL5beginbalace.codeGroup = tbl_ARdetalheaderRpt.custcodegRoup group by  tblFBL5beginbalace.codeGroup ),0),
	  
		  tbl_ARdetalheaderRpt.dkvo= isnull((select sum(isnull(tblFBL5Nnew.[Deposit amount],0)) from tblFBL5Nnew where tblFBL5Nnew.codeGroup = tbl_ARdetalheaderRpt.custcodegRoup and tblFBL5Nnew.[Posting Date] < @fromdate group by tblFBL5Nnew.codeGroup),0)+
	                                	isnull((select sum(isnull(tblFBL5beginbalace.[Deposit amount],0)) from tblFBL5beginbalace where tblFBL5beginbalace.codeGroup = tbl_ARdetalheaderRpt.custcodegRoup group by  tblFBL5beginbalace.codeGroup ),0),

          tbl_ARdetalheaderRpt.psnuoc =isnull((select sum(isnull(tblFBL5Nnew.[Invoice Amount],0)) +  sum(isnull(tblFBL5Nnew.[Adjusted amount],0)) +  sum(isnull(tblFBL5Nnew.[Payment amount],0)) +  sum(isnull(tblFBL5Nnew.[Deposit amount],0)) from tblFBL5Nnew where tblFBL5Nnew.codeGroup = tbl_ARdetalheaderRpt.custcodegRoup and tblFBL5Nnew.[Posting Date] >= @fromdate  and tblFBL5Nnew.[Posting Date] <= @todate group by tblFBL5Nnew.codeGroup),0),
         tbl_ARdetalheaderRpt.psvo = isnull((select sum(isnull(tblFBL5Nnew.[Deposit amount],0)) from tblFBL5Nnew where tblFBL5Nnew.codeGroup = tbl_ARdetalheaderRpt.custcodegRoup and tblFBL5Nnew.[Posting Date] >= @fromdate  and tblFBL5Nnew.[Posting Date] <= @todate group by tblFBL5Nnew.codeGroup),0)
        
		
	    from tbl_ARdetalheaderRpt
	--	where tblFBL5Nnew.codeGroup = tbl_ARdetalheaderRpt.custcodegRoup

		end


		 begin
		
	    update tbl_ARdetalheaderRpt 
	
		set 

		 tbl_ARdetalheaderRpt.cknuoc =tbl_ARdetalheaderRpt.dknuoc + tbl_ARdetalheaderRpt.psnuoc,
		  tbl_ARdetalheaderRpt.ckvo = tbl_ARdetalheaderRpt.dkvo + tbl_ARdetalheaderRpt.psvo

        from tbl_ARdetalheaderRpt

		end



	  


end



GO
/****** Object:  StoredProcedure [dbo].[tbl_ArletterdetailRptcaculationinserts]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[tbl_ArletterdetailRptcaculationinserts]
( @returndate date,
@fromdate date,
@todate date

-- @Document_Number float
)

as

Begin

  
	
		begin

		

		insert into tbl_ArletterdetailRpt (tbl_ArletterdetailRpt.DocNumber,tbl_ArletterdetailRpt.customergroup,tbl_ArletterdetailRpt.Depositamount,tbl_ArletterdetailRpt.InvoiceAmount,tbl_ArletterdetailRpt.Adjamount,tbl_ArletterdetailRpt.Paymentamount,tbl_ArletterdetailRpt.PostingDate)
		select max(isnull(tblFBL5Nnew.Invoice, iif(tblFBL5Nnew.[Document Type] ='RV',  tblFBL5Nnew.Assignment,iif(tblFBL5Nnew.[Document Type] ='DZ',cast(convert(int,tblFBL5Nnew.[Document Number])as VArchar(20)), tblFBL5Nnew.Assignment)) )) ,max(tblFBL5Nnew.codeGroup), sum(isnull(tblFBL5Nnew.[Deposit amount],0)),sum(isnull(tblFBL5Nnew.[Invoice Amount],0)),sum(isnull(tblFBL5Nnew.[Adjusted amount],0)),sum(isnull(tblFBL5Nnew.[Payment amount],0)),max(tblFBL5Nnew.[Posting Date])
	    from    tblFBL5Nnew
		where   tblFBL5Nnew.[Posting Date] >= @fromdate and  tblFBL5Nnew.[Posting Date] <= @todate  and (isnull(tblFBL5Nnew.[Deposit amount],0)<>0 or  isnull(tblFBL5Nnew.[Invoice Amount],0)<>0 or isnull(tblFBL5Nnew.[Adjusted amount],0)<>0 or isnull(tblFBL5Nnew.[Payment amount],0) <>0) 
	    group by tblFBL5Nnew.[Document Number]

		end






end

GO
/****** Object:  StoredProcedure [dbo].[tbl_ArletterRptcaculationinserts]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[UpdateFbl5n]    Script Date: 07/12/2015 1:34:54 PM ******/


CREATE procedure [dbo].[tbl_ArletterRptcaculationinserts]
( @returndate date,
@fromdate date,
@todate date,
@byregion int
-- @Document_Number float
)

as

Begin

     DECLARE 

	     @stt int =0,
	   @sttc int =0,
	    @fulldk float,
        @fullbg float,
	    @depositdk float,
        @depositbg float
--		@false bit
	 --    @region nvarchar
		begin

		insert into tbl_ArletterRpt (tbl_ArletterRpt.returndate,tbl_ArletterRpt.[address],tbl_ArletterRpt.custcodeGRoup, tbl_ArletterRpt.customername,tbl_ArletterRpt.Fromdate, tbl_ArletterRpt.Todate,tbl_ArletterRpt.region,tbl_ArletterRpt.phone,tbl_ArletterRpt.code)
		select 	@returndate,max(tblCustomer.[Address]),tblCustomer.Cusromergroup,max(tblCustomer.[Name 1]),@fromdate,@todate,'VN',max(tblCustomer.[Telephone 1]),max(tblCustomer.Customer)--
	    from    tblCustomer
		where  tblCustomer.Reportsend = 'True' and @byregion = 0 and tblCustomer.Customer not in (select tbl_CustomerGroup.Customercode from tbl_CustomerGroup)
		group by tblCustomer.Cusromergroup-- , tblCustomer.SOrg
		end

		begin
		insert into tbl_ArletterRpt (tbl_ArletterRpt.returndate,tbl_ArletterRpt.[address],tbl_ArletterRpt.custcodeGRoup, tbl_ArletterRpt.customername,tbl_ArletterRpt.Fromdate, tbl_ArletterRpt.Todate,tbl_ArletterRpt.region,tbl_ArletterRpt.phone,tbl_ArletterRpt.code)
		select 	@returndate,max(tbl_CustomerGroup.AdressGroup),tbl_CustomerGroup.Customergropcode,max(tbl_CustomerGroup.[Group Name]),@fromdate,@todate,'VN',max(tbl_CustomerGroup.Phone),max(tbl_CustomerGroup.Customercode)--
	    from    tbl_CustomerGroup
		where   @byregion = 0 --and tbl_CustomerGroup.Customercode  in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
		group by tbl_CustomerGroup.Customergropcode-- , tbl_CustomerGroup.SOrg
		end

		begin
		insert into tbl_ArletterRpt (tbl_ArletterRpt.returndate,tbl_ArletterRpt.[address],tbl_ArletterRpt.custcodeGRoup, tbl_ArletterRpt.customername,tbl_ArletterRpt.Fromdate, tbl_ArletterRpt.Todate,tbl_ArletterRpt.region,tbl_ArletterRpt.phone,tbl_ArletterRpt.code)
		select 	@returndate,max(tbl_CustomerGroup.AdressGroup),tbl_CustomerGroup.Customergropcode,max(tbl_CustomerGroup.[Group Name]),@fromdate,@todate,max(tbl_CustomerGroup.Region),max(tbl_CustomerGroup.Phone),max(tbl_CustomerGroup.Customercode)--
	    from    tbl_CustomerGroup
		where   @byregion = 1 --and tbl_CustomerGroup.Customercode -- in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
		group by tbl_CustomerGroup.Customergropcode-- , tbl_CustomerGroup.SOrg
		end



			begin

		insert into tbl_ArletterRpt (tbl_ArletterRpt.returndate,tbl_ArletterRpt.[address],tbl_ArletterRpt.custcodeGRoup, tbl_ArletterRpt.customername,tbl_ArletterRpt.Fromdate, tbl_ArletterRpt.Todate,tbl_ArletterRpt.region,tbl_ArletterRpt.phone,tbl_ArletterRpt.code)
		select 	@returndate,max(tblCustomer.[Address]),tblCustomer.Cusromergroup,max(tblCustomer.[Name 1]),@fromdate,@todate,tblCustomer.SOrg,max(tblCustomer.[Telephone 1]),max(tblCustomer.Customer)--
	    from    tblCustomer
		where  tblCustomer.Reportsend = 'True' and @byregion = 1 and tblCustomer.Customer not in (select tbl_CustomerGroup.Customercode from tbl_CustomerGroup)
		group by tblCustomer.Cusromergroup , tblCustomer.SOrg
		end



		begin
		update tbl_ArletterRpt 
		set  
	
		tbl_ArletterRpt.sumoffreeclass = isnull((select sum(isnull(tbl_FreGlass.COLAMT,0)) from tbl_FreGlass where tbl_FreGlass.CUSTOMERgroupcode = tbl_ArletterRpt.custcodegRoup),0)
	   

		from tbl_ArletterRpt,tblCustomer
		
		where  tblCustomer.Reportsend = 'True' and tbl_ArletterRpt.custcodegRoup =tblCustomer.Cusromergroup
	 	end



		begin

	--	set @StringAmountEmpty =''
	
		update tbl_ArletterRpt 
		set  
	


		 @fulldk =  isnull((select sum(isnull(tblFBL5Nnew.[Adjusted amount],0))+sum(isnull(tblFBL5Nnew.[Deposit amount],0))+sum(isnull(tblFBL5Nnew.[Invoice Amount],0))+sum(isnull(tblFBL5Nnew.[Payment amount],0)) from tblFBL5Nnew where tblFBL5Nnew.codeGroup = tbl_ArletterRpt.custcodegRoup and tblFBL5Nnew.[Posting Date] <= @todate group by tblFBL5Nnew.codeGroup),0),
	       @fullbg = isnull((select sum(isnull(tblFBL5beginbalace.[Adjusted amount],0))+sum(isnull(tblFBL5beginbalace.[Deposit amount],0))+sum(isnull(tblFBL5beginbalace.[Fullgood amount],0))+sum(isnull(tblFBL5beginbalace.[Payment amount],0)) from tblFBL5beginbalace where tblFBL5beginbalace.codeGroup = tbl_ArletterRpt.custcodegRoup group by  tblFBL5beginbalace.codeGroup ),0),
	  
	  @depositdk  = isnull((select sum(isnull(tblFBL5Nnew.[Deposit amount],0)) from tblFBL5Nnew where tblFBL5Nnew.codeGroup = tbl_ArletterRpt.custcodegRoup and tblFBL5Nnew.[Posting Date] <= @todate group by tblFBL5Nnew.codeGroup),0),
	        @depositbg =  isnull((select sum(isnull(tblFBL5beginbalace.[Deposit amount],0)) from tblFBL5beginbalace where tblFBL5beginbalace.codeGroup = tbl_ArletterRpt.custcodegRoup group by  tblFBL5beginbalace.codeGroup ),0),
	   
	    tbl_ArletterRpt.sumAmountfull =  @fulldk + @fullbg,
	    tbl_ArletterRpt.sumEmptydeposit =  @depositdk +  @depositbg
	
	 
	   from tbl_ArletterRpt--tblFBL5beginbalace,tblFBL5Nnew
		

	    begin
		set @sttc = (select isnull(max(tbl_Preriod.No),0)  from tbl_Preriod where tbl_Preriod.fromdate =@fromdate and  tbl_Preriod.todate = @todate)  --,--and tbl_Preriod. = tbl_ArletterRpt.custcodegRoup 
	    update tbl_ArletterRpt
	  

		set 
	
    	@stt =  (select tbl_Preriod.No  from tbl_Preriod where tbl_Preriod.fromdate =@fromdate and  tbl_Preriod.todate = @todate and tbl_Preriod.customercodeGR = tbl_ArletterRpt.custcodegRoup)  ,
	    @sttc = @sttc +1,
		tbl_ArletterRpt.No = isnull( @stt,@sttc)
		from tbl_ArletterRpt
		end

		
	    begin
	   
	    insert into tbl_Preriod (tbl_Preriod.No,tbl_Preriod.fromdate,tbl_Preriod.todate,tbl_Preriod.customercodeGR,tbl_Preriod.Realbalace,tbl_Preriod.[Deposit amount],tbl_Preriod.Name,tbl_Preriod.Region)
		select tbl_ArletterRpt.No, @fromdate,@todate,tbl_ArletterRpt.custcodegRoup,tbl_ArletterRpt.sumAmountfull,tbl_ArletterRpt.sumEmptydeposit,tbl_ArletterRpt.customername,tbl_ArletterRpt.region
	    from    tbl_ArletterRpt  where tbl_ArletterRpt.No not in( select tbl_Preriod.No from tbl_Preriod where tbl_Preriod.fromdate =@fromdate and  tbl_Preriod.todate = @todate and  tbl_Preriod.customercodeGR = tbl_ArletterRpt.custcodegRoup)
	
		end


		
			end
		




end



GO
/****** Object:  StoredProcedure [dbo].[tbl_ColdetailRptcaculationinserts]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[tbl_ColdetailRptcaculationinserts]
( @returndate date,
@fromdate date,
@todate date

-- @Document_Number float
)

as

Begin
 DECLARE 
	 @vothuong nvarchar(225),
              @Chaivothuong nvarchar(225),
        @Chaivo1lit nvarchar(225),
       @Ketvolit nvarchar(225),
           @Ketnhuathuong nvarchar(225),
              @Ketnhua1lit nvarchar(225),
                @joy20l nvarchar(225),
                @Binhpmicc02 nvarchar(225),
                @binhpmix9l nvarchar(225),
                @palletgo nvarchar(225),
                @paletnhua nvarchar(225),
	

     	 @StringAmountEmpty nvarchar(225)

	


	
		begin

		insert into tbl_ColdetailRpt (tbl_ColdetailRpt.Postingdate, tbl_ColdetailRpt.codeGroup,tbl_ColdetailRpt.SoDelivery,tbl_ColdetailRpt.dkBinhpmicc02,tbl_ColdetailRpt.dkbinhpmix9l,tbl_ColdetailRpt.dkChaivo1lit,tbl_ColdetailRpt.dkChaivothuong,tbl_ColdetailRpt.dkjoy20,tbl_ColdetailRpt.dkKetnhua1lit,tbl_ColdetailRpt.dkKetnhuathuong,tbl_ColdetailRpt.dkKetvolit,tbl_ColdetailRpt.dkKetvothuong,tbl_ColdetailRpt.dkpaletnhua,tbl_ColdetailRpt.dkpalletgo)
		select 	@fromdate,max(tblFBL5beginbalace.codeGroup),'x',isnull(sum(tblFBL5beginbalace.Binhpmicc02),0),isnull(sum(tblFBL5beginbalace.binhpmix9l),0),isnull(sum(tblFBL5beginbalace.Chaivo1lit),0),isnull(sum(tblFBL5beginbalace.Chaivothuong),0),isnull(sum(tblFBL5beginbalace.joy20l),0),isnull(sum(tblFBL5beginbalace.Ketnhua1lit),0),isnull(sum(tblFBL5beginbalace.Ketnhuathuong),0),isnull(sum(tblFBL5beginbalace.Ketvolit),0),isnull(sum(tblFBL5beginbalace.Ketvothuong),0),isnull(sum(tblFBL5beginbalace.paletnhua),0),isnull(sum(tblFBL5beginbalace.palletgo),0)
	    from    tblFBL5beginbalace
		where   tblFBL5beginbalace.codeGroup in (select tblCustomer.Cusromergroup from tblCustomer where tblCustomer.Reportsend = 'True' )-- and (isnull(tblFBL5Nnew.[Deposit amount],0)+isnull(tblFBL5Nnew.[Invoice Amount],0)+isnull(tblFBL5Nnew.[Adjusted amount],0)+isnull(tblFBL5Nnew.[Payment amount],0))>0 --and  tblFBL5Nnew.[Posting Date] >= @fromdate and  tblFBL5Nnew.[Posting Date] <= @todate and (isnull(tblFBL5Nnew.[Deposit amount],0)+isnull(tblFBL5Nnew.[Invoice Amount],0)+isnull(tblFBL5Nnew.[Adjusted amount],0)+isnull(tblFBL5Nnew.[Payment amount],0))>0
        group by tblFBL5beginbalace.codeGroup
		end




	    begin
		
	    update tbl_ColdetailRpt 
	
		set 
	
		tbl_ColdetailRpt.dkBinhpmicc02 = isnull(tbl_ColdetailRpt.dkBinhpmicc02,0) + isnull((select sum(tblFBL5Nnew.Binhpmicc02) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
		tbl_ColdetailRpt.dkbinhpmix9l= isnull(tbl_ColdetailRpt.dkbinhpmix9l,0)  + isnull((select sum(tblFBL5Nnew.binhpmix9l) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
		tbl_ColdetailRpt.dkChaivo1lit = isnull(tbl_ColdetailRpt.dkChaivo1lit,0) + isnull((select sum(tblFBL5Nnew.Chaivo1lit) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
		tbl_ColdetailRpt.dkChaivothuong = isnull(tbl_ColdetailRpt.dkChaivothuong,0) + isnull((select sum(tblFBL5Nnew.Chaivothuong) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
		tbl_ColdetailRpt.dkjoy20 = isnull(tbl_ColdetailRpt.dkjoy20,0) + isnull((select sum(tblFBL5Nnew.joy20l) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
		tbl_ColdetailRpt.dkKetnhua1lit = isnull(tbl_ColdetailRpt.dkKetnhua1lit,0) + isnull((select sum(tblFBL5Nnew.Ketnhua1lit) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
		tbl_ColdetailRpt.dkKetnhuathuong = isnull(tbl_ColdetailRpt.dkKetnhuathuong,0)  + isnull((select sum(tblFBL5Nnew.Ketnhuathuong) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
		tbl_ColdetailRpt.dkKetvolit = isnull(tbl_ColdetailRpt.dkKetvolit,0)  + isnull((select sum(tblFBL5Nnew.Ketvolit) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
		tbl_ColdetailRpt.dkKetvothuong = isnull(tbl_ColdetailRpt.dkKetvothuong,0)   + isnull((select sum(tblFBL5Nnew.Ketvothuong) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
		tbl_ColdetailRpt.dkpaletnhua = isnull(tbl_ColdetailRpt.dkpaletnhua,0)   + isnull((select sum(tblFBL5Nnew.paletnhua) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0),
        tbl_ColdetailRpt.dkpalletgo = isnull(tbl_ColdetailRpt.dkpalletgo,0)   + isnull((select sum(tblFBL5Nnew.palletgo) from  tblFBL5Nnew where tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup and  tblFBL5Nnew.[Posting Date] < @fromdate  group by tblFBL5Nnew.codeGroup),0)

		
		from tbl_ColdetailRpt,tblFBL5Nnew
		where tbl_ColdetailRpt.SoDelivery = 'x' and tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup --and  tblFBL5Nnew.[Posting Date] < @fromdate -- and  tblFBL5Nnew.[Posting Date] <= @todate and tblFBL5Nnew.[Document Type] = 'RV'
	--	 group by tblFBL5Nnew.codeGroup
		end

		-- insert chi tieets col
	    begin
		
	    

		insert into tbl_ColdetailRpt (tbl_ColdetailRpt.InvoiceNumber ,tbl_ColdetailRpt.codeGroup,tbl_ColdetailRpt.SoDelivery, tbl_ColdetailRpt.Postingdate,tbl_ColdetailRpt.Account,tbl_ColdetailRpt.Binhpmicc02,tbl_ColdetailRpt.binhpmix9l,tbl_ColdetailRpt.Chaivo1lit,tbl_ColdetailRpt.Chaivothuong,tbl_ColdetailRpt.joy20l,tbl_ColdetailRpt.Ketnhua1lit,tbl_ColdetailRpt.Ketnhuathuong,tbl_ColdetailRpt.Ketvolit,tbl_ColdetailRpt.Ketvothuong,tbl_ColdetailRpt.paletnhua,tbl_ColdetailRpt.palletgo)
		select isnull(tblFBL5Nnew.Invoice,tblFBL5Nnew.Assignment),tblFBL5Nnew.codeGroup, tblFBL5Nnew.SoDelivery,tblFBL5Nnew.[Posting Date],tblFBL5Nnew.Account,isnull(tblFBL5Nnew.Binhpmicc02,0),isnull(tblFBL5Nnew.binhpmix9l,0),isnull(tblFBL5Nnew.Chaivo1lit,0),isnull(tblFBL5Nnew.Chaivothuong,0),isnull(tblFBL5Nnew.joy20l,0),isnull(tblFBL5Nnew.Ketnhua1lit,0),isnull(tblFBL5Nnew.Ketnhuathuong,0),isnull(tblFBL5Nnew.Ketvolit,0),isnull(tblFBL5Nnew.Ketvothuong,0),isnull(tblFBL5Nnew.paletnhua,0), isnull(tblFBL5Nnew.palletgo,0)
	    from    tblFBL5Nnew,tbl_ColdetailRpt
		where   tblFBL5Nnew.[Posting Date] >= @fromdate and  tblFBL5Nnew.[Posting Date] <= @todate and tblFBL5Nnew.[Document Type] = 'RV' and ( isnull(tblFBL5Nnew.Binhpmicc02,0) + isnull(tblFBL5Nnew.binhpmix9l,0) + isnull(tblFBL5Nnew.Chaivo1lit,0) + isnull(tblFBL5Nnew.Chaivothuong,0) + isnull(tblFBL5Nnew.joy20l,0)+isnull(tblFBL5Nnew.Ketnhua1lit,0)+isnull(tblFBL5Nnew.Ketnhuathuong,0)+isnull(tblFBL5Nnew.Ketvolit,0)+isnull(tblFBL5Nnew.Ketvothuong,0)+ isnull(tblFBL5Nnew.paletnhua,0)+ isnull(tblFBL5Nnew.palletgo,0)) <>0 and tbl_ColdetailRpt.codeGroup = tblFBL5Nnew.codeGroup-- tblFBL5Nnew.codeGroup in (select tblCustomer.Cusromergroup from tblCustomer where tblCustomer.Reportsend = 'True' )-- and (isnull(tblFBL5Nnew.[Deposit amount],0)+isnull(tblFBL5Nnew.[Invoice Amount],0)+isnull(tblFBL5Nnew.[Adjusted amount],0)+isnull(tblFBL5Nnew.[Payment amount],0))>0 --and  tblFBL5Nnew.[Posting Date] >= @fromdate and  tblFBL5Nnew.[Posting Date] <= @todate and (isnull(tblFBL5Nnew.[Deposit amount],0)+isnull(tblFBL5Nnew.[Invoice Amount],0)+isnull(tblFBL5Nnew.[Adjusted amount],0)+isnull(tblFBL5Nnew.[Payment amount],0))>0 --and  tblFBL5Nnew.[Posting Date] <> null
   
		end


		
	 
	    begin
		set  @StringAmountEmpty =''

		
	     update tbl_ArletterRpt 
	    set @vothuong = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkKetvothuong,0)) +  sum(isnull(tbl_ColdetailRpt.Ketvothuong,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0, CONCAT(convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkKetvothuong,0)) + sum(isnull(tbl_ColdetailRpt.Ketvothuong,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )), N' két vỏ thường; '),''))),
			@Chaivothuong = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkChaivothuong,0)) + sum(isnull(tbl_ColdetailRpt.Chaivothuong,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0, CONCAT(convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkChaivothuong,0)) + sum(isnull(tbl_ColdetailRpt.Chaivothuong,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )),  N' chai vỏ thường; '),''))),
			 @Chaivo1lit = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkChaivo1lit,0)) + sum(isnull(tbl_ColdetailRpt.Chaivo1lit,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0, CONCAT(convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkChaivo1lit,0)) + sum(isnull(tbl_ColdetailRpt.Chaivo1lit,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )),N' chai vỏ 1 lít; '),''))),
			 @Ketvolit  = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkKetvolit,0)) + sum(isnull(tbl_ColdetailRpt.Ketvolit,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0, CONCAT(convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkKetvolit,0)) + sum(isnull(tbl_ColdetailRpt.Ketvolit,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )), N' Két vỏ 1 lít; '),''))),
			 @Ketnhuathuong = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkKetnhuathuong,0)) + sum(isnull(tbl_ColdetailRpt.Ketnhuathuong,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0, CONCAT(convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkKetnhuathuong,0)) + sum(isnull(tbl_ColdetailRpt.Ketnhuathuong,0)) from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )),  N' Két nhựa; '),''))),
			 @Ketnhua1lit = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkKetnhua1lit,0))+sum(isnull(tbl_ColdetailRpt.Ketnhua1lit,0)) from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0, CONCAT(convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkKetnhua1lit,0)) + sum(isnull(tbl_ColdetailRpt.Ketnhua1lit,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )), N' Két nhựa 1 lít; '),''))),
			 @joy20l  = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkjoy20,0)) + sum(isnull(tbl_ColdetailRpt.joy20l,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0,CONCAT( convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkjoy20,0)) + sum(isnull(tbl_ColdetailRpt.joy20l,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )), N' Bình joy 20l; '),''))),
		 @Binhpmicc02  = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkBinhpmicc02,0)) + sum(isnull(tbl_ColdetailRpt.Binhpmicc02,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0,CONCAT( convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkBinhpmicc02,0)) + sum(isnull(tbl_ColdetailRpt.Binhpmicc02,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )), N' Bình Postmix/CO2; '),''))),
			 @binhpmix9l = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkbinhpmix9l,0)) + sum(isnull(tbl_ColdetailRpt.binhpmix9l,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0,CONCAT( convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkbinhpmix9l,0)) + sum(isnull(tbl_ColdetailRpt.binhpmix9l,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )),N' Bình Postmix9l; '),''))),
			   @palletgo = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkpalletgo,0)) + sum(isnull(tbl_ColdetailRpt.palletgo,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0,CONCAT( convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkpalletgo,0)) + sum(isnull(tbl_ColdetailRpt.palletgo,0) ) from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )), N' Pallet gỗ; '),''))),
			 @paletnhua  = ltrim(rtrim(iif( (select sum(isnull(tbl_ColdetailRpt.dkpaletnhua,0)) + sum(isnull(tbl_ColdetailRpt.paletnhua,0))  from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup ) <>0, CONCAT(convert(Nvarchar,(select sum(isnull(tbl_ColdetailRpt.dkpaletnhua,0)) + sum(isnull(tbl_ColdetailRpt.paletnhua ,0)) from tbl_ColdetailRpt where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup  group by tbl_ColdetailRpt.codeGroup )),N' Pallet nhựa; '),''))),
			@StringAmountEmpty = CONCAT(@vothuong,@Chaivothuong,@Chaivo1lit,@Ketvolit,@Ketnhuathuong,@Ketnhua1lit,@joy20l,@Binhpmicc02,@binhpmix9l,@palletgo,@paletnhua), 
			
			@StringAmountEmpty = iif(@StringAmountEmpty ='',N' Không nợ vỏ; ',@StringAmountEmpty),
		    tbl_ArletterRpt.StringAmountEmpty = ltrim(rtrim(@StringAmountEmpty))




	     from tbl_ColdetailRpt
		 where tbl_ColdetailRpt.codeGroup = tbl_ArletterRpt.custcodegRoup


			end

			begin
		     update tbl_Preriod
			 set  tbl_Preriod.EmptyString = tbl_ArletterRpt.StringAmountEmpty,
			 tbl_Preriod.[Deposit amount] = tbl_ArletterRpt.sumEmptydeposit,
			 tbl_Preriod.Realbalace = tbl_ArletterRpt.sumAmountfull
			 from  tbl_ArletterRpt
			 where tbl_ArletterRpt.fromdate = tbl_Preriod.fromdate and tbl_ArletterRpt.toDate = tbl_Preriod.todate and  tbl_ArletterRpt.custcodegRoup = tbl_Preriod.customercodeGR
			 end


		

end

GO
/****** Object:  StoredProcedure [dbo].[updaFBL5nreportsBalacegroupRegion]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure  [dbo].[updaFBL5nreportsBalacegroupRegion]
(-- @fromdate date,
  @todate datetime
)

as
begin
        begin 
		update tblFBL5Nnew 
		set tblFBL5Nnew.codeGroup =  Rtrim(cast((convert(int,tblFBL5Nnew.Account)) as varchar(50)))  + right(tblFBL5Nnew.[Business Area],2)-- tblFBL5Nnew.Account + Right(tblFBL5Nnew.[Business Area],2) 
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblFBL5Nnew,tbl_CustomerGroup
		where tblFBL5Nnew.Account in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tblFBL5Nnew.Account <> tbl_CustomerGroup.Customercode 
			   and tblFBL5Nnew.[Posting Date] <= @todate


		end
		begin 
		update tblFBL5Nnew 
		set tblFBL5Nnew.codeGroup =  Rtrim(cast((convert(int,tbl_CustomerGroup.Customergropcode)) as varchar(50)))  + right(tblFBL5Nnew.[Business Area],2)--- tbl_CustomerGroup.Customergropcode + Right(tblFBL5Nnew.[Business Area],2)
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblFBL5Nnew,tbl_CustomerGroup
		where tblFBL5Nnew.Account in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tblFBL5Nnew.Account = tbl_CustomerGroup.Customercode 
			      and tblFBL5Nnew.[Posting Date] <= @todate
		end

		
end
	

GO
/****** Object:  StoredProcedure [dbo].[updaFBL5nreportsBalacegroupVN]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure  [dbo].[updaFBL5nreportsBalacegroupVN]
(-- @fromdate date,
  @todate datetime
)

as
begin
        begin 
		update tblFBL5Nnew 
		set tblFBL5Nnew.codeGroup = tblFBL5Nnew.Account
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblFBL5Nnew,tbl_CustomerGroup
		where tblFBL5Nnew.Account in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tblFBL5Nnew.Account <> tbl_CustomerGroup.Customercode 
			   and tblFBL5Nnew.[Posting Date] <= @todate


		end
		begin 
		update tblFBL5Nnew 
		set tblFBL5Nnew.codeGroup = tbl_CustomerGroup.Customergropcode
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblFBL5Nnew,tbl_CustomerGroup
		where tblFBL5Nnew.Account in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tblFBL5Nnew.Account = tbl_CustomerGroup.Customercode
			      and tblFBL5Nnew.[Posting Date] <= @todate
		end

		
end
	

GO
/****** Object:  StoredProcedure [dbo].[updatebeginBalacegruop]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure  [dbo].[updatebeginBalacegruop]
as
begin
        begin 
		update tblFBL5beginbalace 
		set tblFBL5beginbalace.codeGroup = tblFBL5beginbalace.Account
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblFBL5beginbalace,tbl_CustomerGroup
		where tblFBL5beginbalace.Account in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tblFBL5beginbalace.Account <> tbl_CustomerGroup.Customercode

		end
		begin 
		update tblFBL5beginbalace 
		set tblFBL5beginbalace.codeGroup = tbl_CustomerGroup.Customergropcode
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblFBL5beginbalace,tbl_CustomerGroup
		where tblFBL5beginbalace.Account in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tblFBL5beginbalace.Account = tbl_CustomerGroup.Customercode

		end

		
end
	

GO
/****** Object:  StoredProcedure [dbo].[updatebeginBalacegruop_Onlycode]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure  [dbo].[updatebeginBalacegruop_Onlycode]
(
@onlycode float
)
as
begin
        begin 
		update tblFBL5beginbalace 
		set tblFBL5beginbalace.codeGroup = tblFBL5beginbalace.Account
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblFBL5beginbalace,tbl_CustomerGroup
		where 
		tblFBL5beginbalace.Account = @onlycode 
			   and tblFBL5beginbalace.Account <> tbl_CustomerGroup.Customercode

		end
		begin 
		update tblFBL5beginbalace 
		set tblFBL5beginbalace.codeGroup = tbl_CustomerGroup.Customergropcode
		from tblFBL5beginbalace,tbl_CustomerGroup
		where 
			tblFBL5beginbalace.Account = @onlycode 	   and tblFBL5beginbalace.Account = tbl_CustomerGroup.Customercode

		end

		
end
	




GO
/****** Object:  StoredProcedure [dbo].[updatebeginBalacegruopRegion]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure  [dbo].[updatebeginBalacegruopRegion]
as


begin
        begin 
		update tblFBL5beginbalace 
		set tblFBL5beginbalace.codeGroup = Rtrim(cast((convert(int,tblFBL5beginbalace.Account)) as varchar(50)))  +RIGHT( tblFBL5beginbalace.[Business Area],2)
	-- Rtrim(cast((convert(int,tblFBL5beginbalace.Account)) as varchar(50)))  + right(tblFBL5Nnew.[Business Area],2)-- tblFBL5Nnew.Account + Right(tblFBL5Nnew.[Business Area],2) 
		from tblFBL5beginbalace,tbl_CustomerGroup
		where tblFBL5beginbalace.Account in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tblFBL5beginbalace.Account <> tbl_CustomerGroup.Customercode

		end
		begin 
		update tblFBL5beginbalace 
		set tblFBL5beginbalace.codeGroup = Rtrim(cast((convert(int,tbl_CustomerGroup.Customergropcode)) as varchar(50)))   +RIGHT( tblFBL5beginbalace.[Business Area],2)
	
		from tblFBL5beginbalace,tbl_CustomerGroup
		where tblFBL5beginbalace.Account in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tblFBL5beginbalace.Account = tbl_CustomerGroup.Customercode

		end

		
end
	
GO
/****** Object:  StoredProcedure [dbo].[UpdateClearGlasses]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure  [dbo].[UpdateClearGlasses]

(
@postingdate DateTime,
  @name nvarchar(50)
)
as

Begin

		

		-- insert toongr vaof 
		begin

		insert into tblFBL5Nnew (tblFBL5Nnew.Account,tblFBL5Nnew.[Business Area],[Adjusted amount],tblFBL5Nnew.[Deposit amount],tblFBL5Nnew.Ketvothuong, tblFBL5Nnew.Remark,tblFBL5Nnew.[Posting Date],tblFBL5Nnew.userupdate, tblFBL5Nnew.[Document Type])
		select tbl_FreGlassCleartemp.CUSTOMER,tbl_FreGlassCleartemp.SALORG,tbl_FreGlassCleartemp.[COL Amount],-tbl_FreGlassCleartemp.[COL Amount],-tbl_FreGlassCleartemp.[COL Quantity],tbl_FreGlassCleartemp.Remarks ,@postingdate ,@name , 'COL'  from tbl_FreGlassCleartemp
	--	group by tblFBL5Nnewthisperiod.Account

		end

		




	 begin
		delete  from  tbl_FreGlassCleartemp

		end
	-- tinh real balance

end
-- tih cuoi ky voi cac co moi phat sinh







GO
/****** Object:  StoredProcedure [dbo].[updateComountemp]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[updateComountemp]
as
begin

insert into tbl_Comboundtemp (tbl_Comboundtemp.Code,tbl_Comboundtemp.codeGroup,tbl_Comboundtemp.Region,tbl_Comboundtemp.name) -- tbl_Comboundtemp.name,
select DISTINCT  tblFBL5Nnewthisperiod.Account,tblFBL5Nnewthisperiod.codeGroup,tblFBL5Nnewthisperiod.[Business Area],tblFBL5Nnewthisperiod.name   from tblFBL5Nnewthisperiod --tblFBL5Nnewthisperiod.name




end
GO
/****** Object:  StoredProcedure [dbo].[updateCustgoupinListcustmakeRptRegion]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure  [dbo].[updateCustgoupinListcustmakeRptRegion]
as
begin

        begin 
		update tblCustomer 
		set tblCustomer.Cusromergroup = Rtrim(cast((convert(int,tblCustomer.CUSTOMER)) as varchar(50)))  + right(tblCustomer.SOrg,2)
		from tblCustomer
		where tblCustomer.Reportsend = 'True' --and tblCustomer.CUSTOMER <> tbl_CustomerGroup.Customercode

		end

		--select * from tblCustomer

		--where tblCustomer.Reportsend ='True'



		begin 
		update tblCustomer 
		set tblCustomer.Cusromergroup = Rtrim(cast((convert(int,tbl_CustomerGroup.Customergropcode)) as varchar(50)))    + right(tblCustomer.SOrg,2)
		from tblCustomer,tbl_CustomerGroup
		where tblCustomer.Reportsend ='True' and tblCustomer.CUSTOMER = tbl_CustomerGroup.Customercode

		end

		
end
	



GO
/****** Object:  StoredProcedure [dbo].[updateCustgoupinListcustmakeRptVN]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure  [dbo].[updateCustgoupinListcustmakeRptVN]
as
begin
        begin 
		update tblCustomer 
		set tblCustomer.Cusromergroup = tblCustomer.CUSTOMER
		from tblCustomer
		where tblCustomer.CUSTOMER in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
		end


  --      begin 
		--update tblCustomer 
		--set tblCustomer.Cusromergroup = tblCustomer.CUSTOMER
		--from tblCustomer,tbl_CustomerGroup
		--where tblCustomer.CUSTOMER in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
		--	   and tblCustomer.CUSTOMER <> tbl_CustomerGroup.Customercode

		--end


		begin 
		update tblCustomer 
		set tblCustomer.Cusromergroup = tbl_CustomerGroup.Customergropcode
		from tblCustomer,tbl_CustomerGroup
		where tblCustomer.CUSTOMER in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tblCustomer.CUSTOMER = tbl_CustomerGroup.Customercode

		end

		
end
	



GO
/****** Object:  StoredProcedure [dbo].[updateCustgoupThistable]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure  [dbo].[updateCustgoupThistable]
as
begin
         begin

        update tblFBL5Nnewthisperiod 
		set tblFBL5Nnewthisperiod.codeGroup = tblFBL5Nnewthisperiod.Account
	
	
		end



		begin
        update tblFBL5Nnewthisperiod 
		set tblFBL5Nnewthisperiod.codeGroup = tbl_CustomerGroup.Customergropcode
	
		from tblFBL5Nnewthisperiod,tbl_CustomerGroup
		where tblFBL5Nnewthisperiod.Account = tbl_CustomerGroup.Customercode and  tblFBL5Nnewthisperiod.[Business Area] = tbl_CustomerGroup.Region
		end
		
end


GO
/****** Object:  StoredProcedure [dbo].[updateCustListnotsend]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure  [dbo].[updateCustListnotsend]
as
begin

begin


update tblCustomer 
set tblCustomer.Reportsend = 'True'
from tblCustomer
end
	
begin
update tblCustomer 
set tblCustomer.Reportsend = 'false'
--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
from tblCustomer,tbl_Unsendlist
where tblCustomer.Customer = tbl_Unsendlist.Customer and  tblCustomer.SOrg = tbl_Unsendlist.Sorg
end

end	

GO
/****** Object:  StoredProcedure [dbo].[updateCustListsend]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure  [dbo].[updateCustListsend]
as
begin


update tblCustomer 
set tblCustomer.Reportsend = 'true'
--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
from tblCustomer,tbl_Unsendlist
where tblCustomer.Customer = tbl_Unsendlist.Customer and  tblCustomer.SOrg = tbl_Unsendlist.Sorg
end
	

GO
/****** Object:  StoredProcedure [dbo].[updateEdlp]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure  [dbo].[updateEdlp]
as
		
		
		begin   --update edlp

		IF OBJECT_ID(N'tempdb..#TempResults', N'U') IS NOT NULL 
        DROP TABLE #TempResults;

		CREATE TABLE #TempResults
			(
			  [Invoice Doc Nr] float,
			  [Col value] float
			
			)

-- tạo group cộng được tổng tiền, inserto #TempResults

       insert into #TempResults ([Invoice Doc Nr],[Col value])
		SELECT  tblEDLP.[Invoice Doc Nr], sum(tblEDLP.[Cond Value]) AS [Col value]--,tbl_Productlist.[Empty Group]--tblEDLP.UoM ,sum(tblEDLP.[Billed Qty]),
	    FROM tblEDLP inner join tbl_Productlist
		on tblEDLP.[Mat Number] = tbl_Productlist.[Mat Number]  
		group by  tblEDLP.[Invoice Doc Nr]
		ORDER BY tblEDLP.[Invoice Doc Nr]
	
	
	    begin -- update this by col value
					update tblFBL5Nnewthisperiod 
					set  tblFBL5Nnewthisperiod.[Empty Amount] = #TempResults.[Col value]
	    
					from tblFBL5Nnewthisperiod,#TempResults
					where tblFBL5Nnewthisperiod.[Document Number] = #TempResults.[Invoice Doc Nr]-- and  tblFBL5Nnewthisperiod.[Document Type] = 'RV'
		end

		 --- select * from  #TempResults 
		IF OBJECT_ID(N'tempdb..#TempResults', N'U') IS NOT NULL 
        DROP TABLE #TempResults;
	
		begin -- update empty group lên tble edlp
		         	update tblEDLP 
					set  tblEDLP.EmpyGroup = tbl_Productlist.[Empty Group]
	    
					from tblEDLP,tbl_Productlist
					where tblEDLP.[Mat Number] = tbl_Productlist.[Mat Number]-- and  tblFBL5Nnewthisperiod.[Document Type] = 'RV'

		end
		begin -- update empty quanity theo conudvalue
		         	update tblEDLP 
					set  tblEDLP.[Billed Qty] = tblEDLP.[Billed Qty]*(-1)
	    
					from tblEDLP
					where tblEDLP.[Cond Value] <0 and  tblEDLP.[Billed Qty] >0  -- and  tblFBL5Nnewthisperiod.[Document Type] = 'RV'

		end


		        begin -- update detail  kết vỏ thường
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.Ketvothuong = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  and  tblEDLP.UoM like 'CS' and tblEDLP.EmpyGroup =1
				end
	
 --select * from tblFBL5Nnewthisperiod
		
	     	begin -- update detail  CHAI vỏ thường
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.Chaivothuong = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  and  tblEDLP.UoM like 'EA' and tblEDLP.EmpyGroup =1
					end

			begin -- update detail  kết vỏ 1 LÍT
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.Ketvolit = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr] and   tblEDLP.UoM like 'CS'  and tblEDLP.EmpyGroup =2
end
		
		begin -- update detail  CHAI vỏ thường
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.Chaivo1lit = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  and  tblEDLP.UoM like 'EA' and tblEDLP.EmpyGroup =2
end

				begin -- update detail  kết nhua thuong
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.Ketnhuathuong = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]   and tblEDLP.EmpyGroup =3
end
		
		
				begin -- update detail  kết nhua 1 lit
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.Ketnhua1lit = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]   and tblEDLP.EmpyGroup =4
					end
			
				begin -- update detail joy20l
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.joy20l = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr] and tblEDLP.EmpyGroup =5
end

					begin -- update detail Binhpmicc02
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.Binhpmicc02 = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]   and tblEDLP.EmpyGroup =6
end

				
						begin -- update detail binhpmix9l
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.binhpmix9l = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  and tblEDLP.EmpyGroup =7
					end

				

						begin -- update detail palletgo
		            update tblFBL5Nnewthisperiod   
					set  tblFBL5Nnewthisperiod.palletgo = (select sum(tblEDLP.[Billed Qty]) from tblEDLP where  tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]  group by tblEDLP.[Invoice Doc Nr] ) 
	    
					from tblFBL5Nnewthisperiod,tblEDLP
					where tblFBL5Nnewthisperiod.[Document Number] = tblEDLP.[Invoice Doc Nr]   and tblEDLP.EmpyGroup =8
end


				end


GO
/****** Object:  StoredProcedure [dbo].[UpdateFbl5n]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateFbl5n]
( @name nvarchar(225) 
-- @Document_Number float
)

as

Begin


--DECLARE @Invoice_Registration nvarchar(225) 
--DECLARE @Invoice_Number nvarchar(225) 
--DECLARE @SoDelivery  nvarchar(225) 
--DECLARE @Assignment  nvarchar(225)
--DECLARE @Invoice_Amount  nvarchar(225)
--DECLARE @Remark nvarchar(225)
--DECLARE @Fullgood_amount float
--DECLARE @Empty_Amount float
--DECLARE @Payment_amount  float
--DECLARE  @Adjusted_amount float

-- lay du lieu ra
-- update tblFBL5Nnewthisperiod

       BEGIN
         UPDATE tblFBL5Nnewthisperiod 
         SET tblFBL5Nnewthisperiod.[userupdate]= @name,
		 tblFBL5Nnewthisperiod.[Deposit amount] =0,
		 tblFBL5Nnewthisperiod.[Empty Amount Notmach] =0;
       --  WHERE Emp_Code in (select top 2 Emp_Code from employee order by Emp_Code desc)
        END

		BEGIN
         update tblFBL5Nnewthisperiod 
		set  tblFBL5Nnewthisperiod.name = tblCustomer.[Name 1]
	    	
		from tblFBL5Nnewthisperiod,tblCustomer
		where tblFBL5Nnewthisperiod.Account = tblCustomer.Customer and  tblFBL5Nnewthisperiod.[Business Area] = tblCustomer.SOrg
		end


		 BEGIN
         UPDATE tblFBL5Nnewthisperiod 
         SET tblFBL5Nnewthisperiod.[Adjusted amount] = tblFBL5Nnewthisperiod.[Amount in local currency],
		-- tblFBL5Nnewthisperiod.[Fullgood amount] = tblFBL5Nnewthisperiod.[Amount in local currency],
                        tblFBL5Nnewthisperiod.Remark = tblFBL5Nnewthisperiod.Assignment
          WHERE tblFBL5Nnewthisperiod.[Document Type] = 'DG' OR  tblFBL5Nnewthisperiod.[Document Type] = 'DR' OR tblFBL5Nnewthisperiod.[Document Type] = 'DA' OR tblFBL5Nnewthisperiod.[Document Type] = 'AB' OR tblFBL5Nnewthisperiod.[Document Type] = 'SA'
         END


		 BEGIN
		   UPDATE tblFBL5Nnewthisperiod 
         SET tblFBL5Nnewthisperiod.[Payment amount] = tblFBL5Nnewthisperiod.[Amount in local currency],
	         --        tblFBL5Nnewthisperiod.[Adjusted amount] = tblFBL5Nnewthisperiod.[Amount in local currency],
                        tblFBL5Nnewthisperiod.Remark = tblFBL5Nnewthisperiod.Assignment
          WHERE tblFBL5Nnewthisperiod.[Document Type] = 'DZ' --OR  tblFBL5Nnewthisperiod.[Document Type] = 'DR' OR tblFBL5Nnewthisperiod.[Document Type] = 'DA' OR tblFBL5Nnewthisperiod.[Document Type] = 'AB' OR tblFBL5Nnewthisperiod.[Document Type] = 'SA'
         END

		  BEGIN
		   UPDATE tblFBL5Nnewthisperiod 
         SET 
		           tblFBL5Nnewthisperiod.[Fullgood amount] = tblFBL5Nnewthisperiod.[Invoice Amount],
                        tblFBL5Nnewthisperiod.Remark = tblFBL5Nnewthisperiod.Invoice
          WHERE tblFBL5Nnewthisperiod.[Document Type] = 'RV' --OR  tblFBL5Nnewthisperiod.[Document Type] = 'DR' OR tblFBL5Nnewthisperiod.[Document Type] = 'DA' OR tblFBL5Nnewthisperiod.[Document Type] = 'AB' OR tblFBL5Nnewthisperiod.[Document Type] = 'SA'
         END

end

GO
/****** Object:  StoredProcedure [dbo].[updateFreglasessgroupREgion]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[updateFreglasessgroupREgion]
as
begin
        begin 
		update tbl_FreGlass 
		set tbl_FreGlass.CUSTOMERgroupcode =  Rtrim(cast((convert(int,tbl_FreGlass.CUSTOMER)) as varchar(50)))   + right(tbl_FreGlass.SALORG,2)
	-- Rtrim(cast((convert(int,tblFBL5beginbalace.Account)) as varchar(50)))  + right(tblFBL5Nnew.[Business Area],2)-- tblFBL5Nnew.Account + Right(tblFBL5Nnew.[Business Area],2) 
		from tbl_FreGlass,tbl_CustomerGroup
		where tbl_FreGlass.CUSTOMER in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tbl_FreGlass.CUSTOMER <> tbl_CustomerGroup.Customercode

		end
		begin 
		update tbl_FreGlass 
		set tbl_FreGlass.CUSTOMERgroupcode = Rtrim(cast((convert(int,tbl_CustomerGroup.Customergropcode)) as varchar(50)))  + right(tbl_FreGlass.SALORG,2)
		
		from tbl_FreGlass,tbl_CustomerGroup
		where tbl_FreGlass.CUSTOMER in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tbl_FreGlass.CUSTOMER = tbl_CustomerGroup.Customercode

		end

		
end
	
GO
/****** Object:  StoredProcedure [dbo].[updateFreglasessgroupVN]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure  [dbo].[updateFreglasessgroupVN]
as
begin
        begin 
		update tbl_FreGlass 
		set tbl_FreGlass.CUSTOMERgroupcode = tbl_FreGlass.CUSTOMER
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tbl_FreGlass,tbl_CustomerGroup
		where tbl_FreGlass.CUSTOMER in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tbl_FreGlass.CUSTOMER <> tbl_CustomerGroup.Customercode

		end
		begin 
		update tbl_FreGlass 
		set tbl_FreGlass.CUSTOMERgroupcode = tbl_CustomerGroup.Customergropcode
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tbl_FreGlass,tbl_CustomerGroup
		where tbl_FreGlass.CUSTOMER in (select tblCustomer.Customer from tblCustomer where tblCustomer.Reportsend = 'True' )
			   and tbl_FreGlass.CUSTOMER = tbl_CustomerGroup.Customercode

		end

		
end
	

GO
/****** Object:  StoredProcedure [dbo].[updategroupprintletterChoice]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[updategroupprintletterChoice]
( @groupsending nvarchar(225) 
-- @Document_Number float
)

as

Begin


--DECLARE @Invoice_Registration nvarchar(225) 
--DECLARE @Invoice_Number nvarchar(225) 
--DECLARE @SoDelivery  nvarchar(225) 
--DECLARE @Assignment  nvarchar(225)
--DECLARE @Invoice_Amount  nvarchar(225)
--DECLARE @Remark nvarchar(225)
--DECLARE @Fullgood_amount float
--DECLARE @Empty_Amount float
--DECLARE @Payment_amount  float
--DECLARE  @Adjusted_amount float

-- lay du lieu ra
-- update tblFBL5Nnewthisperiod
        BEGIN
         UPDATE tbl_ARdetalheaderRpt 
         SET tbl_ARdetalheaderRpt.prt= 'false'
	
        END

		 BEGIN
         UPDATE tbl_ArletterdetailRpt 
         SET tbl_ArletterdetailRpt.prt= 'false'
	
        END
		 BEGIN
         UPDATE tbl_ArletterRpt 
         SET tbl_ArletterRpt.prt= 'false'
	
        END
		 BEGIN
         UPDATE tbl_ColdetailRpt 
         SET tbl_ColdetailRpt.prt= 'false'
	
        END



       BEGIN
         UPDATE tbl_ARdetalheaderRpt 
         SET tbl_ARdetalheaderRpt.prt= 'True'
		from tbl_ARdetalheaderRpt,tblCustomer
		where tbl_ARdetalheaderRpt.custcodeGRoup = tblCustomer.Cusromergroup and  tblCustomer.SendingGroup = @groupsending  
        END


		
       BEGIN
         UPDATE tbl_ArletterdetailRpt 
         SET tbl_ArletterdetailRpt.prt= 'True'
		from tbl_ArletterdetailRpt,tblCustomer
		where tbl_ArletterdetailRpt.customergroup = tblCustomer.Cusromergroup and  tblCustomer.SendingGroup = @groupsending  
        END

		
       BEGIN
         UPDATE tbl_ArletterRpt 
         SET tbl_ArletterRpt.prt= 'True'
		from tbl_ArletterRpt,tblCustomer
		where tbl_ArletterRpt.custcodegRoup = tblCustomer.Cusromergroup and  tblCustomer.SendingGroup = @groupsending  
        END


			
       BEGIN
         UPDATE tbl_ColdetailRpt 
         SET tbl_ColdetailRpt.prt= 'True'
		from tbl_ColdetailRpt,tblCustomer
		where tbl_ColdetailRpt.codeGroup = tblCustomer.Cusromergroup and  tblCustomer.SendingGroup = @groupsending  
        END


end

GO
/****** Object:  StoredProcedure [dbo].[updategroupprintletterChoiceALL]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[updategroupprintletterChoiceALL]
--( @groupsending nvarchar(225) 
-- @Document_Number float
--)

as

Begin


--DECLARE @Invoice_Registration nvarchar(225) 
--DECLARE @Invoice_Number nvarchar(225) 
--DECLARE @SoDelivery  nvarchar(225) 
--DECLARE @Assignment  nvarchar(225)
--DECLARE @Invoice_Amount  nvarchar(225)
--DECLARE @Remark nvarchar(225)
--DECLARE @Fullgood_amount float
--DECLARE @Empty_Amount float
--DECLARE @Payment_amount  float
--DECLARE  @Adjusted_amount float

-- lay du lieu ra
-- update tblFBL5Nnewthisperiod
        BEGIN
         UPDATE tbl_ARdetalheaderRpt 
         SET tbl_ARdetalheaderRpt.prt= 'True'
	
        END

		 BEGIN
         UPDATE tbl_ArletterdetailRpt 
         SET tbl_ArletterdetailRpt.prt= 'True'
	
        END
		 BEGIN
         UPDATE tbl_ArletterRpt 
         SET tbl_ArletterRpt.prt= 'True'
	
        END
		 BEGIN
         UPDATE tbl_ColdetailRpt 
         SET tbl_ColdetailRpt.prt= 'True'
	
        END


end

GO
/****** Object:  StoredProcedure [dbo].[updategroupprintletterfromcodetocodeChoice]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[updategroupprintletterfromcodetocodeChoice]
( @fromcode float,
  @tocode float
-- @Document_Number float
)

as

Begin


--DECLARE @Invoice_Registration nvarchar(225) 
--DECLARE @Invoice_Number nvarchar(225) 
--DECLARE @SoDelivery  nvarchar(225) 
--DECLARE @Assignment  nvarchar(225)
--DECLARE @Invoice_Amount  nvarchar(225)
--DECLARE @Remark nvarchar(225)
--DECLARE @Fullgood_amount float
--DECLARE @Empty_Amount float
--DECLARE @Payment_amount  float
--DECLARE  @Adjusted_amount float

-- lay du lieu ra
-- update tblFBL5Nnewthisperiod
        BEGIN
         UPDATE tbl_ARdetalheaderRpt 
         SET tbl_ARdetalheaderRpt.prt= 'false'
	
        END

		 BEGIN
         UPDATE tbl_ArletterdetailRpt 
         SET tbl_ArletterdetailRpt.prt= 'false'
	
        END
		 BEGIN
         UPDATE tbl_ArletterRpt 
         SET tbl_ArletterRpt.prt= 'false'
	
        END
		 BEGIN
         UPDATE tbl_ColdetailRpt 
         SET tbl_ColdetailRpt.prt= 'false'
	
        END



       BEGIN
         UPDATE tbl_ARdetalheaderRpt 
         SET tbl_ARdetalheaderRpt.prt= 'True'
		from tbl_ARdetalheaderRpt,tblCustomer
		where tbl_ARdetalheaderRpt.custcodeGRoup = tblCustomer.Cusromergroup and ( tblCustomer.Customer >= @fromcode   and  tblCustomer.Customer <= @tocode)
        END


		
       BEGIN
         UPDATE tbl_ArletterdetailRpt 
         SET tbl_ArletterdetailRpt.prt= 'True'
		from tbl_ArletterdetailRpt,tblCustomer
		where tbl_ArletterdetailRpt.customergroup = tblCustomer.Cusromergroup and  ( tblCustomer.Customer >= @fromcode   and  tblCustomer.Customer <= @tocode)
        END

		
       BEGIN
         UPDATE tbl_ArletterRpt 
         SET tbl_ArletterRpt.prt= 'True'
		from tbl_ArletterRpt,tblCustomer
		where tbl_ArletterRpt.custcodegRoup = tblCustomer.Cusromergroup and  ( tblCustomer.Customer >= @fromcode   and  tblCustomer.Customer <= @tocode)
        END


			
       BEGIN
         UPDATE tbl_ColdetailRpt 
         SET tbl_ColdetailRpt.prt= 'True'
		from tbl_ColdetailRpt,tblCustomer
		where tbl_ColdetailRpt.codeGroup = tblCustomer.Cusromergroup and  ( tblCustomer.Customer >= @fromcode   and  tblCustomer.Customer <= @tocode)
        END


end

GO
/****** Object:  StoredProcedure [dbo].[updategroupprintletterOnlycodeChoice]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[updategroupprintletterOnlycodeChoice]
( @onlycode float
-- @Document_Number float
)

as

Begin


--DECLARE @Invoice_Registration nvarchar(225) 
--DECLARE @Invoice_Number nvarchar(225) 
--DECLARE @SoDelivery  nvarchar(225) 
--DECLARE @Assignment  nvarchar(225)
--DECLARE @Invoice_Amount  nvarchar(225)
--DECLARE @Remark nvarchar(225)
--DECLARE @Fullgood_amount float
--DECLARE @Empty_Amount float
--DECLARE @Payment_amount  float
--DECLARE  @Adjusted_amount float

-- lay du lieu ra
-- update tblFBL5Nnewthisperiod
        BEGIN
         UPDATE tbl_ARdetalheaderRpt 
         SET tbl_ARdetalheaderRpt.prt= 'false'
	
        END

		 BEGIN
         UPDATE tbl_ArletterdetailRpt 
         SET tbl_ArletterdetailRpt.prt= 'false'
	
        END
		 BEGIN
         UPDATE tbl_ArletterRpt 
         SET tbl_ArletterRpt.prt= 'false'
	
        END
		 BEGIN
         UPDATE tbl_ColdetailRpt 
         SET tbl_ColdetailRpt.prt= 'false'
	
        END



       BEGIN
         UPDATE tbl_ARdetalheaderRpt 
         SET tbl_ARdetalheaderRpt.prt= 'True'
		from tbl_ARdetalheaderRpt,tblCustomer
		where tbl_ARdetalheaderRpt.custcodeGRoup = tblCustomer.Cusromergroup and  tblCustomer.Customer = @onlycode  
        END


		
       BEGIN
         UPDATE tbl_ArletterdetailRpt 
         SET tbl_ArletterdetailRpt.prt= 'True'
		from tbl_ArletterdetailRpt,tblCustomer
		where tbl_ArletterdetailRpt.customergroup = tblCustomer.Cusromergroup and  tblCustomer.Customer = @onlycode  
        END

		
       BEGIN
         UPDATE tbl_ArletterRpt 
         SET tbl_ArletterRpt.prt= 'True'
		from tbl_ArletterRpt,tblCustomer
		where tbl_ArletterRpt.custcodegRoup = tblCustomer.Cusromergroup and tblCustomer.Customer = @onlycode  
        END


			
       BEGIN
         UPDATE tbl_ColdetailRpt 
         SET tbl_ColdetailRpt.prt= 'True'
		from tbl_ColdetailRpt,tblCustomer
		where tbl_ColdetailRpt.codeGroup = tblCustomer.Cusromergroup and tblCustomer.Customer = @onlycode  
        END


end

GO
/****** Object:  StoredProcedure [dbo].[updatelistGruopsendingCustomer]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[updatelistGruopsendingCustomer]
as

begin
        begin
		update tblCustomer 
		set tblCustomer.SendingGroup = ''
		where tblCustomer.SendingGroup in (select tblCustomerTmp.SendingGroup from tblCustomerTmp)
	--	from tblCustomerTmp
		end


		begin
		update tblCustomer 
		set tblCustomer.SendingGroup = tblCustomerTmp.SendingGroup
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblCustomerTmp,tblCustomer
		where tblCustomerTmp.Customer = tblCustomer.Customer --and tblVat.Region = tblCustomer.SOrg
		end
	

end
GO
/****** Object:  StoredProcedure [dbo].[UpdatenewThispriodAgain]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	
CREATE procedure [dbo].[UpdatenewThispriodAgain]
as
begin

-- begin
-- insert into tblFBL5Nnew (tblFBL5Nnew.Account,tblFBL5Nnew.name,tblFBL5Nnew.[Adjusted amount],tblFBL5Nnew.[Amount in local currency],tblFBL5Nnew.Assignment,tblFBL5Nnew.Binhpmicc02,tblFBL5Nnew.binhpmix9l,tblFBL5Nnew.[Business Area],tblFBL5Nnew.Chaivo1lit,tblFBL5Nnew.Chaivothuong,tblFBL5Nnew.[Deposit amount],tblFBL5Nnew.[Document Number],tblFBL5Nnew.[Document Type],tblFBL5Nnew.[Empty Amount],tblFBL5Nnew.[Empty Amount Notmach],tblFBL5Nnew.[Formula invoice date],tblFBL5Nnew.[Fullgood amount],tblFBL5Nnew.Invoice,tblFBL5Nnew.joy20l,tblFBL5Nnew.Ketnhua1lit,tblFBL5Nnew.Ketnhuathuong,tblFBL5Nnew.Ketvolit,tblFBL5Nnew.Ketvothuong,tblFBL5Nnew.paletnhua,tblFBL5Nnew.palletgo,tblFBL5Nnew.[Payment amount],tblFBL5Nnew.[Posting Date],tblFBL5Nnew.Remark,tblFBL5Nnew.SoDelivery,tblFBL5Nnew.userupdate,tblFBL5Nnew.[Invoice Amount])
-- select tblFBL5Nnewthisperiod.Account,tblFBL5Nnewthisperiod.name,tblFBL5Nnewthisperiod.[Adjusted amount],tblFBL5Nnewthisperiod.[Amount in local currency],tblFBL5Nnewthisperiod.Assignment,tblFBL5Nnewthisperiod.Binhpmicc02,tblFBL5Nnewthisperiod.binhpmix9l,tblFBL5Nnewthisperiod.[Business Area],tblFBL5Nnewthisperiod.Chaivo1lit,tblFBL5Nnewthisperiod.Chaivothuong,tblFBL5Nnewthisperiod.[Deposit amount],tblFBL5Nnewthisperiod.[Document Number],tblFBL5Nnewthisperiod.[Document Type],tblFBL5Nnewthisperiod.[Empty Amount],tblFBL5Nnewthisperiod.[Empty Amount Notmach],tblFBL5Nnewthisperiod.[Formula invoice date],tblFBL5Nnewthisperiod.[Fullgood amount],tblFBL5Nnewthisperiod.Invoice,tblFBL5Nnewthisperiod.joy20l,tblFBL5Nnewthisperiod.Ketnhua1lit,tblFBL5Nnewthisperiod.Ketnhuathuong,tblFBL5Nnewthisperiod.Ketvolit,tblFBL5Nnewthisperiod.Ketvothuong,tblFBL5Nnewthisperiod.paletnhua,tblFBL5Nnewthisperiod.palletgo,tblFBL5Nnewthisperiod.[Payment amount],tblFBL5Nnewthisperiod.[Posting Date],tblFBL5Nnewthisperiod.Remark,tblFBL5Nnewthisperiod.SoDelivery,tblFBL5Nnewthisperiod.userupdate,tblFBL5Nnewthisperiod.[Invoice Amount] from tblFBL5Nnewthisperiod
-- end

 begin -- xóa toàn bo doc tren tblFBL5Nnewthisperiod not in fbl5n
		delete from tblFBL5Nnewthisperiod
		where  tblFBL5Nnewthisperiod.[Document Number] not in (select tblFBL5N.[Document Number] from tblFBL5N)
 end
 
 begin -- update fbl5nthisspriodby fbl5n2

		update tblFBL5Nnewthisperiod 
		set tblFBL5Nnewthisperiod.Account=	tblFBL5N.Account,
		tblFBL5Nnewthisperiod.[Amount in local currency]=tblFBL5N.[Amount in local currency],
		tblFBL5Nnewthisperiod.Assignment=tblFBL5N.Assignment,
		tblFBL5Nnewthisperiod.[Business Area]=tblFBL5N.[Business Area],
		tblFBL5Nnewthisperiod.[Document Type]=tblFBL5N.[Document Type],
		tblFBL5Nnewthisperiod.[Posting Date]=tblFBL5N.[Posting Date]


		from  tblFBL5Nnewthisperiod,tblFBL5N
		where tblFBL5Nnewthisperiod.[Document Number]=tblFBL5N.[Document Number]

end
	
 begin -- insertnewFbl5n by doc in fbl5n not in

			 insert into tblFBL5Nnewthisperiod (tblFBL5Nnewthisperiod.Account,tblFBL5Nnewthisperiod.[Amount in local currency],tblFBL5Nnewthisperiod.Assignment,tblFBL5Nnewthisperiod.[Business Area],tblFBL5Nnewthisperiod.[Document Number],tblFBL5Nnewthisperiod.[Document Type],tblFBL5Nnewthisperiod.[Posting Date])
			 select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] from tblFBL5N
			 where   tblFBL5N.[Document Number] not in (select tblFBL5Nnewthisperiod.[Document Number] from tblFBL5Nnewthisperiod)
 end



end


GO
/****** Object:  StoredProcedure [dbo].[updateRemarktoFBL5N]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
create procedure  [dbo].[updateRemarktoFBL5N]
as

begin

update tblFBL5N 
set tblFBL5N.Assignment = tbl_Remark.Remark
--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
from tblFBL5N,tbl_Remark
where tblFBL5N.[Document Number] = tbl_Remark.DocumentNo
end
	

GO
/****** Object:  StoredProcedure [dbo].[UpdateRerionintoVATouFromFBL5n]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure  [dbo].[UpdateRerionintoVATouFromFBL5n]
as
begin


update tblVat 
set tblVat.Region = tblFBL5N.[Business Area]

from tblVat,tblFBL5N
where tblVat.[SAP Invoice Number] = tblFBL5N.[Document Number] -- and  tblCustomer.SOrg = tbl_Unsendlist.Sorg
end
	

GO
/****** Object:  StoredProcedure [dbo].[updatetblFBL5NnewthisperiodFromOM]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure  [dbo].[updatetblFBL5NnewthisperiodFromOM]
as
begin


update tblFBL5Nnewthisperiod 
set tblFBL5Nnewthisperiod.name = tblCustomer.[Name 1]
--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
from tblFBL5Nnewthisperiod,tblCustomer
where tblFBL5Nnewthisperiod.Account = tblCustomer.Customer and tblFBL5Nnewthisperiod.[Business Area] = tblCustomer.SOrg
end
	

GO
/****** Object:  StoredProcedure [dbo].[updatetblFBL5NTempRPtview]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure  [dbo].[updatetblFBL5NTempRPtview]
as
begin

		begin

		delete from tblFBL5NTempRPtview 
		end

		begin

		insert into tblFBL5NTempRPtview (tblFBL5NTempRPtview.[Business Area],.Account,tblFBL5NTempRPtview.[Adjusted amount],tblFBL5NTempRPtview.[Amount in local currency],tblFBL5NTempRPtview.Binhpmicc02,tblFBL5NTempRPtview.binhpmix9l,tblFBL5NTempRPtview.Chaivo1lit,tblFBL5NTempRPtview.Chaivothuong,tblFBL5NTempRPtview.[Deposit amount],tblFBL5NTempRPtview.[Empty Amount],tblFBL5NTempRPtview.[Fullgood amount],tblFBL5NTempRPtview.[Invoice Amount],tblFBL5NTempRPtview.joy20l,tblFBL5NTempRPtview.Ketnhua1lit,tblFBL5NTempRPtview.Ketnhuathuong,tblFBL5NTempRPtview.Ketvolit,tblFBL5NTempRPtview.Ketvothuong,tblFBL5NTempRPtview.paletnhua,tblFBL5NTempRPtview.palletgo,tblFBL5NTempRPtview.[Payment amount])
		select tblFBL5Nnew.[Business Area],tblFBL5Nnew.Account,sum(tblFBL5Nnew.[Adjusted amount]),sum(tblFBL5Nnew.[Amount in local currency]),sum(tblFBL5Nnew.Binhpmicc02),sum(tblFBL5Nnew.binhpmix9l),sum(tblFBL5Nnew.Chaivo1lit),sum(tblFBL5Nnew.Chaivothuong),sum(tblFBL5Nnew.[Deposit amount]),sum(tblFBL5Nnew.[Empty Amount]),sum(tblFBL5Nnew.[Fullgood amount]),sum(tblFBL5Nnew.[Invoice Amount]),sum(tblFBL5Nnew.joy20l),sum(tblFBL5Nnew.Ketnhua1lit),sum(tblFBL5Nnew.Ketnhuathuong),sum(tblFBL5Nnew.Ketvolit),sum(tblFBL5Nnew.Ketvothuong),sum(tblFBL5Nnew.paletnhua),sum(tblFBL5Nnew.palletgo),sum(tblFBL5Nnew.[Payment amount]) from tblFBL5Nnew
		group by tblFBL5Nnew.Account, tblFBL5Nnew.[Business Area]

			end
end

GO
/****** Object:  StoredProcedure [dbo].[updateVATout]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure  [dbo].[updateVATout]
as
begin
       
       
		begin
        update tblFBL5Nnewthisperiod 
		set  tblFBL5Nnewthisperiod.name = tblVat.[Customer Name],
	    	 tblFBL5Nnewthisperiod.Invoice = tblVat.[Invoice Registration Number]+ ' ' + tblVat.[Invoice Number],
		--   tblFBL5Nnewthisperiod.Assignment = cast((convert(int,tblVat.[SAP Delivery Number])) as varchar(50)),
	    	 tblFBL5Nnewthisperiod.[Formula invoice date] = tblVat.[Pro Forma Date],
	    	 tblFBL5Nnewthisperiod.SoDelivery = cast((convert(int,tblVat.[SAP Delivery Number])) as varchar(50)),
		   --  tblFBL5Nnewthisperiod.Assignment = tblVat.[Invoice Registration Number] +' ' + tblVat.[Invoice Number],
		    tblFBL5Nnewthisperiod.[Invoice Amount] = tblVat.[Invoice Amount Before VAT] + tblVat.[VAT Amount],
			tblFBL5Nnewthisperiod.[Fullgood amount] =  tblVat.[Invoice Amount Before VAT] + tblVat.[VAT Amount],
			tblFBL5Nnewthisperiod.[COL value] = tblFBL5Nnewthisperiod.[Amount in local currency] - tblVat.[Invoice Amount Before VAT] - tblVat.[VAT Amount],
			tblFBL5Nnewthisperiod.Remark = tblVat.[Invoice Registration Number] +' ' + tblVat.[Invoice Number]

		from tblFBL5Nnewthisperiod,tblVat
		where tblFBL5Nnewthisperiod.[Document Number] = tblVat.[SAP Invoice Number]-- and  tblFBL5Nnewthisperiod.[Document Type] = 'RV'
		end
		
		begin
        update tblFBL5Nnewthisperiod 
	      set -- tblFBL5Nnewthisperiod.Assignment = cast((convert(int,tblVat.[SAP Delivery Number])) as varchar(50)),
		       tblFBL5Nnewthisperiod.Remark = cast((convert(int,tblVat.[SAP Delivery Number])) as varchar(50)), 
		--	     tblFBL5Nnewthisperiod.Assignment = cast((convert(int,tblVat.[SAP Delivery Number])) as varchar(50)),
			   tblFBL5Nnewthisperiod.[Fullgood amount] =0
	      from tblFBL5Nnewthisperiod,tblVat
		where tblFBL5Nnewthisperiod.[Document Number] = tblVat.[SAP Invoice Number]  and tblVat.[Invoice Amount Before VAT] = 0 and tblVat.[Invoice Amount Before VAT] <> tblFBL5Nnewthisperiod.[Amount in local currency] -- and  tblFBL5Nnewthisperiod.[Document Type] = 'RV'
		end



end


GO
/****** Object:  StoredProcedure [dbo].[updateVATstatinmaster]    Script Date: 5/27/2021 2:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
CREATE procedure [dbo].[updateVATstatinmaster]
as

begin
        begin
		update tblVat 
		set tblVat.Statuscheck = 1
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblVat
		end


		begin
		update tblVat 
		set tblVat.Statuscheck = 0
		--select tblFBL5N.Account,tblFBL5N.[Amount in local currency],tblFBL5N.Assignment,tblFBL5N.[Business Area],tblFBL5N.[Document Number],tblFBL5N.[Document Type],tblFBL5N.[Posting Date] 
		from tblVat,tblCustomer
		where tblVat.[Customer Number] = tblCustomer.Customer and tblVat.Region = tblCustomer.SOrg
		end
	

end
GO
USE [master]
GO
ALTER DATABASE [ARconfirmationletter] SET  READ_WRITE 
GO
