/****** Object:  User [SubSonicDemo]    Script Date: 05/26/2008 21:05:56 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'BlogDemo')

/****** Object:  Table [dbo].[Authors]    Script Date: 05/26/2008 21:05:56 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Authors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Authors](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_Authors_CreatedOn]  DEFAULT (getutcdate()),
	[CreatedBy] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Authors_CreatedBy]  DEFAULT (''),
	[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DF_Authors_ModifiedOn]  DEFAULT (getutcdate()),
	[ModifiedBy] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Authors_ModifiedBy]  DEFAULT (''),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Authors_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
/****** Object:  Table [dbo].[Categories]    Script Date: 05/26/2008 21:05:56 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_Categories_CreatedOn]  DEFAULT (getutcdate()),
	[CreatedBy] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL DEFAULT (''),
	[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DF_Categories_ModifiedOn]  DEFAULT (getutcdate()),
	[ModifiedBy] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL DEFAULT (''),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Categories_Enabled]  DEFAULT ((0)),
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
/****** Object:  Table [dbo].[PostCategoryMapper]    Script Date: 05/26/2008 21:05:56 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PostCategoryMapper]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PostCategoryMapper](
	[PostID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_PostCategoryMapper] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
/****** Object:  Table [dbo].[Comments]    Script Date: 05/26/2008 21:05:56 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[CommentDate] [datetime] NOT NULL,
	[Author] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CommentText] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_Comments_CreatedOn]  DEFAULT (getutcdate()),
	[CreatedBy] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL DEFAULT (''),
	[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DF_Comments_ModifiedOn]  DEFAULT (getutcdate()),
	[ModifiedBy] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL DEFAULT (''),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Comments_Enabled]  DEFAULT ((0)),
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
/****** Object:  Table [dbo].[Posts]    Script Date: 05/26/2008 21:05:56 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Posts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Posts](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PostContent] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PostDate] [datetime] NULL,
	[AuthorID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_Posts_CreatedOn]  DEFAULT (getutcdate()),
	[CreatedBy] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Posts__CreatedBy__0519C6AF]  DEFAULT (''),
	[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DF_Posts_ModifiedOn]  DEFAULT (getutcdate()),
	[ModifiedBy] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Posts__ModifiedB__07020F21]  DEFAULT (''),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Posts_Enabled]  DEFAULT ((0)),
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
/****** Object:  StoredProcedure [dbo].[GetPostsWithGreaterThanXComments]    Script Date: 05/26/2008 21:05:56 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPostsWithGreaterThanXComments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetPostsWithGreaterThanXComments
	@NumberOfComments int = 0
AS
BEGIN
	Select
		P.*
	From
		Posts P
		Inner Join 
			(
			Select	
				PostID, Count(*) as ''NumComments''
			From
				Comments
			Where
				IsDeleted = 0
			Group By
				PostID
			) as CommentCount On P.PostID = CommentCount.PostID			
	Where
		CommentCount.NumComments > @NumberOfComments
END
' 
END
/****** Object:  View [dbo].[TitleDateAuthorView]    Script Date: 05/26/2008 21:05:56 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[TitleDateAuthorView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.TitleDateAuthorView
AS
SELECT     dbo.Posts.Title, dbo.Posts.PostDate, dbo.Authors.Name
FROM         dbo.Authors INNER JOIN
                      dbo.Posts ON dbo.Authors.AuthorID = dbo.Posts.AuthorID
' 
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PostCategoryMapper_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[PostCategoryMapper]'))
ALTER TABLE [dbo].[PostCategoryMapper]  WITH NOCHECK ADD  CONSTRAINT [FK_PostCategoryMapper_Categories] FOREIGN KEY([CategoryID])
REFERENCES [Categories] ([CategoryID])
ALTER TABLE [dbo].[PostCategoryMapper] CHECK CONSTRAINT [FK_PostCategoryMapper_Categories]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PostCategoryMapper_Posts1]') AND parent_object_id = OBJECT_ID(N'[dbo].[PostCategoryMapper]'))
ALTER TABLE [dbo].[PostCategoryMapper]  WITH NOCHECK ADD  CONSTRAINT [FK_PostCategoryMapper_Posts1] FOREIGN KEY([PostID])
REFERENCES [Posts] ([PostID])
ALTER TABLE [dbo].[PostCategoryMapper] CHECK CONSTRAINT [FK_PostCategoryMapper_Posts1]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comments_Posts]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comments]'))
ALTER TABLE [dbo].[Comments]  WITH NOCHECK ADD  CONSTRAINT [FK_Comments_Posts] FOREIGN KEY([PostID])
REFERENCES [Posts] ([PostID])
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Posts_Authors]') AND parent_object_id = OBJECT_ID(N'[dbo].[Posts]'))
ALTER TABLE [dbo].[Posts]  WITH NOCHECK ADD  CONSTRAINT [FK_Posts_Authors] FOREIGN KEY([AuthorID])
REFERENCES [Authors] ([AuthorID])
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Authors]


