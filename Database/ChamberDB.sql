USE [ChamberDB]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Data] [nvarchar](max) NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Business]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipLevel_Id] [uniqueidentifier] NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Classification_Id] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NOT NULL,
	[User_Id] [uniqueidentifier] NULL,
	[MailingAddress] [nvarchar](100) NULL,
	[PhysicalAddress] [nvarchar](100) NULL,
	[MailingCity] [nvarchar](100) NULL,
	[MailingState] [nvarchar](100) NULL,
	[MailingZipcode] [nvarchar](5) NULL,
	[PhysicalCity] [nvarchar](100) NOT NULL,
	[PhysicalState] [nvarchar](100) NOT NULL,
	[PhysicalZipcode] [nvarchar](5) NULL,
	[Active] [bit] NOT NULL,
	[Completed] [bit] NOT NULL,
	[CompletedDate] [datetime2](7) NULL,
	[Description] [nvarchar](500) NULL,
	[Avatar] [nvarchar](500) NULL,
	[Slug] [nvarchar](100) NULL,
	[Phone] [nvarchar](15) NULL,
	[WebAddress] [nvarchar](100) NULL,
 CONSTRAINT [PK_Business] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BusinessBalance]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessBalance](
	[Id] [uniqueidentifier] NOT NULL,
	[Business_Id] [uniqueidentifier] NOT NULL,
	[AmountDue] [decimal](10, 2) NULL,
	[AmountPaid] [decimal](10, 2) NULL,
	[Credit] [decimal](10, 2) NULL,
	[DueDate] [date] NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[PaidDate] [date] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_BusinessBalance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BusinessContact]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessContact](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PrimaryPhone] [nvarchar](12) NULL,
	[SecondaryPhone] [nvarchar](12) NULL,
	[Email] [nvarchar](100) NULL,
	[Business_Id] [uniqueidentifier] NOT NULL,
	[Active] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BusinessContact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Classification]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classification](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[CreateDate] [datetime2](7) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Classification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Email]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[Id] [uniqueidentifier] NOT NULL,
	[EmailTo] [nvarchar](100) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](200) NOT NULL,
	[NameTo] [nvarchar](100) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MembershipLevel]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipLevel](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[EmployeeMax] [int] NULL,
	[AnnualPrice] [decimal](10, 2) NULL,
	[SemiAnnualPrice] [decimal](10, 2) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_MembershipLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MembershipRole]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipRole](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_MembershipRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MembershipUser]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUser](
	[Id] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordSalt] [nvarchar](128) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[LastLoginDate] [datetime2](7) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Slug] [nvarchar](100) NULL,
	[Avatar] [nvarchar](500) NULL,
	[DisplayName] [nvarchar](150) NULL,
	[LastPasswordChangedDate] [datetime2](7) NULL,
	[PasswordResetToken] [nvarchar](15) NULL,
	[PasswordResetTokenCreatedAt] [datetime2](7) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_MembershipUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MembershipUsersInRoles]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUsersInRoles](
	[UserIdentifier] [uniqueidentifier] NOT NULL,
	[RoleIdentifier] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MembershipUsersInRoles] PRIMARY KEY CLUSTERED 
(
	[UserIdentifier] ASC,
	[RoleIdentifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings]    Script Date: 9/16/2016 8:09:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [uniqueidentifier] NOT NULL,
	[SiteName] [nvarchar](250) NULL,
	[SiteUrl] [nvarchar](250) NULL,
	[Theme] [nvarchar](50) NULL,
	[RegistrationEnabled] [bit] NOT NULL,
	[NewMemberStartingRole] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'23f544e9-1b48-4e71-b7eb-a66301183fc3', N'AdminRegisteredUserAdded', N'MembershipUserID=a1143d15-18f1-44b5-9587-a66301183fb9,AdminID=a8a7e677-fc67-4554-b337-a5d00122ee25', CAST(N'2016-08-15 17:00:21.327' AS DateTime))
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'eefac9da-68dd-4b55-8483-a663011f63af', N'ProfileUpdated', N'UserID=a8a7e677-fc67-4554-b337-a5d00122ee25', CAST(N'2016-08-15 12:26:21.167' AS DateTime))
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'61c99349-4f20-41b1-9be6-a663011facd4', N'AdminBusinessAdded', N'BusinessID=e77b6905-cdf6-47dd-b478-a663011facd1,AdminID=a8a7e677-fc67-4554-b337-a5d00122ee25', CAST(N'2016-08-15 17:27:23.580' AS DateTime))
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'dd12401d-f8c0-4711-a7d1-a663011fcf43', N'AdminBusinessUpdated', N'BusinessID=e77b6905-cdf6-47dd-b478-a663011facd1,AdminID=a8a7e677-fc67-4554-b337-a5d00122ee25', CAST(N'2016-08-15 12:27:52.963' AS DateTime))
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'eb80098d-b21d-48a3-ac45-a6630124328e', N'AdminProfileUpdated', N'UserID=a8a7e677-fc67-4554-b337-a5d00122ee25,AdminId=a8a7e677-fc67-4554-b337-a5d00122ee25', CAST(N'2016-08-15 12:43:51.507' AS DateTime))
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'956d305b-31a8-4fe2-b9f5-a66301247f4b', N'MembershipLevelAdded', N'UserID=a8a7e677-fc67-4554-b337-a5d00122ee25,MembershipLevelID=b39920f8-0836-49fd-9e3e-a66301247f48', CAST(N'2016-08-15 17:44:56.990' AS DateTime))
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'6b9dd67d-6cfc-40b0-bde9-a6630124bce3', N'ClassificationAdded', N'UserID=a8a7e677-fc67-4554-b337-a5d00122ee25,ClassificationID=e6c8545b-44cc-42af-8aff-a6630124bce1', CAST(N'2016-08-15 17:45:49.550' AS DateTime))
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'3fe36d82-87ea-4c1e-b1c0-a663012638c6', N'AdminBusinessContactAdded', N'BusinessContactID=504ac77f-6727-402a-90b4-a663012638c4,AdminID=a8a7e677-fc67-4554-b337-a5d00122ee25', CAST(N'2016-08-15 17:51:13.717' AS DateTime))
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'7d7f7a56-f8b3-4fa4-8e34-a66301267679', N'AdminBusinessUpdated', N'BusinessID=e77b6905-cdf6-47dd-b478-a663011facd1,AdminID=a8a7e677-fc67-4554-b337-a5d00122ee25', CAST(N'2016-08-15 12:52:06.370' AS DateTime))
INSERT [dbo].[Activity] ([Id], [Type], [Data], [TimeStamp]) VALUES (N'1d568775-3c19-4033-a202-a66301586229', N'ProfileUpdated', N'UserID=a8a7e677-fc67-4554-b337-a5d00122ee25', CAST(N'2016-08-15 15:53:51.707' AS DateTime))
INSERT [dbo].[Business] ([Id], [MembershipLevel_Id], [Name], [Classification_Id], [CreateDate], [User_Id], [MailingAddress], [PhysicalAddress], [MailingCity], [MailingState], [MailingZipcode], [PhysicalCity], [PhysicalState], [PhysicalZipcode], [Active], [Completed], [CompletedDate], [Description], [Avatar], [Slug], [Phone], [WebAddress]) VALUES (N'e77b6905-cdf6-47dd-b478-a663011facd1', N'b39920f8-0836-49fd-9e3e-a66301247f48', N'Southern Star Technology', N'e6c8545b-44cc-42af-8aff-a6630124bce1', CAST(N'2016-08-15 17:27:23.580' AS DateTime), N'a8a7e677-fc67-4554-b337-a5d00122ee25', NULL, NULL, NULL, N'Alabama', NULL, N'Montgomery', N'Alabama', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, N'www.southernstartech.us')
INSERT [dbo].[BusinessContact] ([Id], [FirstName], [LastName], [PrimaryPhone], [SecondaryPhone], [Email], [Business_Id], [Active], [CreateDate]) VALUES (N'504ac77f-6727-402a-90b4-a663012638c4', N'Jane', N'Doe', N'444.333.2222', NULL, N'jane@email.com', N'e77b6905-cdf6-47dd-b478-a663011facd1', 1, CAST(N'2016-08-15 17:51:13.717' AS DateTime))
INSERT [dbo].[Classification] ([Id], [Name], [Description], [CreateDate], [Active]) VALUES (N'e6c8545b-44cc-42af-8aff-a6630124bce1', N'Technology', N'Information Technology', CAST(N'2016-08-15 17:45:49.5504743' AS DateTime2), 1)
INSERT [dbo].[MembershipLevel] ([Id], [Name], [CreateDate], [Description], [EmployeeMax], [AnnualPrice], [SemiAnnualPrice], [Active]) VALUES (N'b39920f8-0836-49fd-9e3e-a66301247f48', N'Business Level I', CAST(N'2016-08-15 17:44:56.9900333' AS DateTime2), N'0 to 5 employees', 5, CAST(75.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[MembershipRole] ([Id], [RoleName]) VALUES (N'19c0317e-6993-46d7-9661-a5a001445dde', N'Admin')
INSERT [dbo].[MembershipRole] ([Id], [RoleName]) VALUES (N'5f8d77e1-a893-40a5-a9db-a5a001445de2', N'User')
INSERT [dbo].[MembershipUser] ([Id], [Email], [Password], [PasswordSalt], [CreateDate], [LastLoginDate], [FirstName], [LastName], [City], [State], [Slug], [Avatar], [DisplayName], [LastPasswordChangedDate], [PasswordResetToken], [PasswordResetTokenCreatedAt], [Active]) VALUES (N'a8a7e677-fc67-4554-b337-a5d00122ee25', N'admin@chamber.com', N'9GiQe/99XOQkkeCg+DB3iMu2MCebfT+unmU3SD1Qg1A=', N'40VIZ6IvS2kKIoLNTfx9bCkiDkjNbvf3', CAST(N'2016-08-12 11:41:10.2717463' AS DateTime2), CAST(N'2016-08-15 18:07:24.9007035' AS DateTime2), N'Josh', N'Doe', N'Montgomery', N'Alabama', N'admin-chamber-com', N'fb49a9fb-1e4d-4b75-a92a-a66301586228_twitter.jpg', N'Admin', CAST(N'2016-08-15 18:07:39.7028999' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[MembershipUser] ([Id], [Email], [Password], [PasswordSalt], [CreateDate], [LastLoginDate], [FirstName], [LastName], [City], [State], [Slug], [Avatar], [DisplayName], [LastPasswordChangedDate], [PasswordResetToken], [PasswordResetTokenCreatedAt], [Active]) VALUES (N'a1143d15-18f1-44b5-9587-a66301183fb9', N'user@chamber.com', N'7YUKM2b2/sBE5R/kchXpT5e8yZDcpJaTD5UHt2hGwZc=', N'3xsa5gY6qM1tJSEkzhboVJC5r9i7rg39', CAST(N'2016-08-15 17:00:21.3259992' AS DateTime2), CAST(N'2016-08-15 17:00:21.3259992' AS DateTime2), N'John', N'Doe', N'Montgomery', N'Alabama', N'user-chamber-com', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[MembershipUsersInRoles] ([UserIdentifier], [RoleIdentifier]) VALUES (N'a8a7e677-fc67-4554-b337-a5d00122ee25', N'19c0317e-6993-46d7-9661-a5a001445dde')
INSERT [dbo].[MembershipUsersInRoles] ([UserIdentifier], [RoleIdentifier]) VALUES (N'a1143d15-18f1-44b5-9587-a66301183fb9', N'5f8d77e1-a893-40a5-a9db-a5a001445de2')
INSERT [dbo].[Settings] ([Id], [SiteName], [SiteUrl], [Theme], [RegistrationEnabled], [NewMemberStartingRole]) VALUES (N'a11af452-033e-4fe9-81ae-a5a001445e46', N'Chamber', N'chamber.azurewebsites.net', N'Default', 1, N'5f8d77e1-a893-40a5-a9db-a5a001445de2')
ALTER TABLE [dbo].[Business]  WITH CHECK ADD  CONSTRAINT [FK_Business_Classification] FOREIGN KEY([Classification_Id])
REFERENCES [dbo].[Classification] ([Id])
GO
ALTER TABLE [dbo].[Business] CHECK CONSTRAINT [FK_Business_Classification]
GO
ALTER TABLE [dbo].[Business]  WITH CHECK ADD  CONSTRAINT [FK_Business_MembershipLevel] FOREIGN KEY([MembershipLevel_Id])
REFERENCES [dbo].[MembershipLevel] ([Id])
GO
ALTER TABLE [dbo].[Business] CHECK CONSTRAINT [FK_Business_MembershipLevel]
GO
ALTER TABLE [dbo].[Business]  WITH CHECK ADD  CONSTRAINT [FK_Business_MembershipUser] FOREIGN KEY([User_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[Business] CHECK CONSTRAINT [FK_Business_MembershipUser]
GO
ALTER TABLE [dbo].[BusinessBalance]  WITH CHECK ADD  CONSTRAINT [FK_BusinessBalance_Business] FOREIGN KEY([Business_Id])
REFERENCES [dbo].[Business] ([Id])
GO
ALTER TABLE [dbo].[BusinessBalance] CHECK CONSTRAINT [FK_BusinessBalance_Business]
GO
ALTER TABLE [dbo].[BusinessContact]  WITH CHECK ADD  CONSTRAINT [FK_BusinessContact_Business] FOREIGN KEY([Business_Id])
REFERENCES [dbo].[Business] ([Id])
GO
ALTER TABLE [dbo].[BusinessContact] CHECK CONSTRAINT [FK_BusinessContact_Business]
GO
ALTER TABLE [dbo].[MembershipUsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_MembershipUsersInRoles_MembershipRole] FOREIGN KEY([RoleIdentifier])
REFERENCES [dbo].[MembershipRole] ([Id])
GO
ALTER TABLE [dbo].[MembershipUsersInRoles] CHECK CONSTRAINT [FK_MembershipUsersInRoles_MembershipRole]
GO
ALTER TABLE [dbo].[MembershipUsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_MembershipUsersInRoles_MembershipUser] FOREIGN KEY([UserIdentifier])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[MembershipUsersInRoles] CHECK CONSTRAINT [FK_MembershipUsersInRoles_MembershipUser]
GO
ALTER TABLE [dbo].[Settings]  WITH CHECK ADD  CONSTRAINT [FK_Settings_MembershipRole] FOREIGN KEY([NewMemberStartingRole])
REFERENCES [dbo].[MembershipRole] ([Id])
GO
ALTER TABLE [dbo].[Settings] CHECK CONSTRAINT [FK_Settings_MembershipRole]
GO
