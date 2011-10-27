ALTER TABLE [Authors] NOCHECK CONSTRAINT ALL
GO

SET IDENTITY_INSERT [Authors] ON 
PRINT 'Begin inserting data in Authors'
INSERT INTO [Authors] ([AuthorID], [Name], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(1, 'Scott Guthrie', '5/27/2008 1:55:26 AM', 'EAGLEONE\mpaladino', '5/27/2008 1:55:26 AM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Authors] ([AuthorID], [Name], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(2, 'Scott Hanselman', '5/27/2008 1:55:26 AM', 'EAGLEONE\mpaladino', '5/27/2008 1:55:26 AM', 'EAGLEONE\mpaladino',  0)
SET IDENTITY_INSERT [Authors] OFF 
ALTER TABLE [Authors] CHECK CONSTRAINT ALL
GO



ALTER TABLE [Categories] NOCHECK CONSTRAINT ALL
GO

SET IDENTITY_INSERT [Categories] ON 
PRINT 'Begin inserting data in Categories'
INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(2, 'ASP.NET', 'Posts regarding ASP.NET', '5/15/2008 7:59:49 PM', 'EAGLEONE\mpaladino', '5/15/2008 7:59:49 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(3, 'Visual Studio', NULL, '5/20/2008 8:40:18 PM', 'EAGLEONE\mpaladino', '5/20/2008 8:40:18 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(4, 'Community News', NULL, '5/20/2008 8:40:26 PM', 'EAGLEONE\mpaladino', '5/20/2008 8:40:26 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(5, 'Silverlight', NULL, '5/20/2008 8:40:38 PM', 'EAGLEONE\mpaladino', '5/20/2008 8:40:38 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(6, 'Link Listing', NULL, '5/20/2008 8:40:46 PM', 'EAGLEONE\mpaladino', '5/20/2008 8:40:46 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(7, 'MVC', NULL, '5/20/2008 8:40:55 PM', 'EAGLEONE\mpaladino', '5/20/2008 8:40:55 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(8, 'Speaking', NULL, '5/26/2008 11:09:18 AM', 'EAGLEONE\mpaladino', '5/26/2008 11:09:18 AM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(9, 'Standards', NULL, '5/26/2008 11:09:55 AM', 'EAGLEONE\mpaladino', '5/26/2008 11:09:55 AM', 'EAGLEONE\mpaladino',  0)
SET IDENTITY_INSERT [Categories] OFF 
ALTER TABLE [Categories] CHECK CONSTRAINT ALL
GO



ALTER TABLE [Posts] NOCHECK CONSTRAINT ALL
GO

SET IDENTITY_INSERT [Posts] ON 
PRINT 'Begin inserting data in Posts'
INSERT INTO [Posts] ([PostID], [Title], [PostContent], [PostDate], [AuthorID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(3, 'April 11th Links: ASP.NET, ASP.NET AJAX, ASP.NET MVC, Visual Studio', 'Here is the latest in my link-listing series.  Also check out my ASP.NET Tips, Tricks and Tutorials page and Silverlight Tutorials page for links to popular articles I''ve done myself in the past.

ASP.NET
More ASP.NET Security Tutorials: The last three of Scott Mitchell''s excellent ASP.NET security tutorials.  His final three articles cover how to select user accounts, recover and change passwords, and unlock and approve user accounts.

Building a VS 2008 Styled Grid with the ListView and DataPager Controls: Matt Berseth has a great article that talks about techniques you can use with the new ASP.NET 3.5 ListView control to create a nicely styled Grid UI - while preserving total control over the HTML and CSS used.  Also read his follow-up post here that talks about how to achieve the same UI with the GridView control.

', '4/11/2008 12:00:00 AM', 1, '5/20/2008 8:43:00 PM', 'EAGLEONE\mpaladino', '5/20/2008 8:50:58 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Posts] ([PostID], [Title], [PostContent], [PostDate], [AuthorID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(5, 'ASP.NET MVC Source Refresh Preview', 'We recently opened up a new ASP.NET CodePlex Project that we will be using to provide previews (with buildable source code) for several upcoming ASP.NET features and releases.

Last month we used it to publish the first drop of the ASP.NET MVC source code.  This first drop included the source for the ASP.NET MVC Preview 2 release that we shipped at MIX, along with Visual Studio project files to enable you to patch and build it yourself.
', '4/16/2008 12:00:00 AM', 1, '5/20/2008 8:44:50 PM', 'EAGLEONE\mpaladino', '5/20/2008 8:46:21 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Posts] ([PostID], [Title], [PostContent], [PostDate], [AuthorID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(7, 'Professional ASP.NET 3.5 Book (only $16 on Amazon for a short time)', 'One of the things I like to track are book sales on Amazon.com, which provides a useful data point to monitor what developers are interested in on any given day.  I use the www.TitleZ.com site (which is built using ASP.NET) to track specific titles I want to watch - it then generates a report showing real-time Amazon sales ranking data, as well as 7 day, 30 day and 90 day sales ranking averages.

This morning I pulled up my report and saw the usual books near the top of my list, and was about to navigate away when I noticed the eye-popping amazon ranking of the top book -"Professional ASP.NET 3.5: In C# and VB" by Bill Evjen, Scott Hanselman and Devin Rader.  Its Amazon sales rank was a stunning #95 (of all books on Amazon), which meant it was outselling even Harry Potter (which is pretty much unheard of for any technology book).', '5/6/2008 12:00:00 AM', 1, '5/20/2008 8:48:54 PM', 'EAGLEONE\mpaladino', '5/20/2008 8:50:28 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Posts] ([PostID], [Title], [PostContent], [PostDate], [AuthorID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(8, 'Visual Studio 2008 and .NET Framework 3.5 Service Pack 1 Beta3', 'Earlier today we shipped a public beta of our upcoming .NET 3.5 SP1 and VS 2008 SP1 releases.  These servicing updates provide a roll-up of bug fixes and performance improvements for issues reported since we released the products last November.  They also contain a number of feature additions and enhancements that make building .NET applications better (see below for details on some of them).

We plan to ship the final release of both .NET 3.5 SP1 and VS 2008 SP1 this summer as free updates.  You can download and install the beta here.
', '5/12/2008 12:00:00 AM', 1, '5/20/2008 8:50:01 PM', 'EAGLEONE\mpaladino', '5/26/2008 9:35:31 AM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Posts] ([PostID], [Title], [PostContent], [PostDate], [AuthorID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(10, '11 Top Tips for a Successful Technical Presentation', ' Over five years ago I posted Tips for a Successful MSFT Presentation. Yesterday I watched the video of my Mix Presentation all the way through. It''s always very painful to hear one''s own voice but it''s even worse to watch yourself. I never listen to my podcast and I avoid watching myself. It''s like watching a person in parallel universe and it inspires self-loathing. However, if you are someone who values continuous improvement - and I am - you need to do the uncomfortable. 

Here''s my five-years-later Updated Tips for a Successful Technical Presentation.
', '5/16/2008 12:00:00 AM', 2, '5/26/2008 9:52:23 AM', 'EAGLEONE\mpaladino', '5/26/2008 11:10:29 AM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Posts] ([PostID], [Title], [PostContent], [PostDate], [AuthorID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(11, 'VS2008 and .Net 3.5 SP1 Beta - Should You Fear This Release? ', 'The Beta of .NET 3.5 and VS2008 SP1 is out. I''m sure everyone is blogging the heck out of it, so I''ll try to add my own specific kind of value. There''s fixes, many improvements (some subtle, some dramatic), and some new technology.

Should You Fear This (Beta) Release?
Maybe a little bit. Don''t be afraid of the new assemblies or the bug fixes, I have found them to be very good and have no stability problems, but this Service Pack Installer might cause you some trouble in this beta, especially if you already have beta stuff installed over the top of VS2008RTM (the original version). It''ll be correct when it releases later this summer.

Now, if you''re going to decide to install a Beta of a Service Pack, do read the ReadMe and ScottGu''s post. Go ahead, I''ll wait here. OK, if you''re already running some beta stuff, like the Silverlight Tools for Visual Studio, you''ll want to uninstall that FIRST, otherwise you''ll get an error and be upset. This will also be figured out when the SP actually releases, but be warned.
', '5/12/2008 12:00:00 AM', 2, '5/26/2008 9:53:05 AM', 'EAGLEONE\mpaladino', '5/26/2008 11:10:45 AM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Posts] ([PostID], [Title], [PostContent], [PostDate], [AuthorID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(12, 'RFC: OpenTweets - Why is Microblogging centralized?', 'I''m thoroughly enjoying Twitter (follow me!) Apparently others are enjoying it also as there''s a funny estimate that it''s costing $14 billion in lost productivity (via a back of envelope calculation). There is about a million people on Twitter and maybe 60k adding each a month. Certainly it''ll be blocked by most corporate firewalls soon for just this reason.

Twitter is also down ALL the time and it''s been having weekly (daily?) scale problems for a YEAR, culminating in rumors that the development team is leaving Ruby on Rails that have been denied by Evan Williams (via a "Tweet," of course). However, that doesn''t change the fact that Twitter is down so often there is a site dedicated to "Twitter Down Art" showcasing all the pictures that Twitter puts up when their sites are down. Google changes their art monthly and during holidays, but never goes down. Twitter goes down so often that they use that as an opportunity to change their art! So far, in this era of transparency, no one has explained in technical (or any) terms what the problem with Twitter is and folks are getting impatient. I think that it would be a great PR and Karmic move to just start a Twitter Technical Blog and share the crazy IT problem of the day. Surely someone is sleeping on a cot next to the TweetBoxes and has a story to tell.

', '5/2/2008 12:00:00 AM', 2, '5/26/2008 9:54:06 AM', 'EAGLEONE\mpaladino', '5/26/2008 11:10:20 AM', 'EAGLEONE\mpaladino',  0)
SET IDENTITY_INSERT [Posts] OFF 
ALTER TABLE [Posts] CHECK CONSTRAINT ALL
GO



ALTER TABLE [Comments] NOCHECK CONSTRAINT ALL
GO

SET IDENTITY_INSERT [Comments] ON 
PRINT 'Begin inserting data in Comments'
INSERT INTO [Comments] ([CommentID], [PostID], [CommentDate], [Author], [CommentText], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(2, 3, '5/20/2008 8:59:00 PM', 'Michael Paladino', 'This is a test comment.', '5/20/2008 8:59:34 PM', 'EAGLEONE\mpaladino', '5/20/2008 8:59:34 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Comments] ([CommentID], [PostID], [CommentDate], [Author], [CommentText], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(3, 8, '5/20/2008 8:59:00 PM', 'Michael Paladino', 'This is a comment about the VS2008 and .NET 3.5 service pack.', '5/20/2008 9:00:04 PM', 'EAGLEONE\mpaladino', '5/20/2008 9:00:04 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Comments] ([CommentID], [PostID], [CommentDate], [Author], [CommentText], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(4, 8, '5/20/2008 9:00:00 PM', 'Somebody Else', 'This is another comment about the service pack.', '5/20/2008 9:00:25 PM', 'EAGLEONE\mpaladino', '5/20/2008 9:00:25 PM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Comments] ([CommentID], [PostID], [CommentDate], [Author], [CommentText], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(5, 10, '5/26/2008 12:00:00 AM', 'Michael Paladino', 'This is a great article!  I am currently trying to use this info for my FSDNUG presentation.', '5/26/2008 9:56:15 AM', 'EAGLEONE\mpaladino', '5/26/2008 9:57:16 AM', 'EAGLEONE\mpaladino',  0)
INSERT INTO [Comments] ([CommentID], [PostID], [CommentDate], [Author], [CommentText], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted])
VALUES(6, 10, '5/26/2008 9:57:00 AM', 'FSDNUG Member', 'Hmm...I think Paladino''s presentation skills still need some work.', '5/26/2008 9:57:55 AM', 'EAGLEONE\mpaladino', '5/26/2008 9:57:55 AM', 'EAGLEONE\mpaladino',  0)
SET IDENTITY_INSERT [Comments] OFF 
ALTER TABLE [Comments] CHECK CONSTRAINT ALL
GO



ALTER TABLE [PostCategoryMapper] NOCHECK CONSTRAINT ALL
GO

PRINT 'Begin inserting data in PostCategoryMapper'
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(3, 2)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(3, 3)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(3, 5)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(3, 6)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(3, 7)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(5, 2)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(5, 7)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(7, 2)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(8, 2)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(8, 3)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(8, 4)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(10, 8)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(11, 2)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(11, 3)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(11, 4)
INSERT INTO [PostCategoryMapper] ([PostID], [CategoryID])
VALUES(12, 9)
ALTER TABLE [PostCategoryMapper] CHECK CONSTRAINT ALL
GO



