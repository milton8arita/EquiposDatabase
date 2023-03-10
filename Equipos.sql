USE [Equipos]
GO
/****** Object:  Table [dbo].[matches]    Script Date: 16/1/2023 23:51:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matches](
	[match_id] [int] NOT NULL,
	[host_team] [int] NOT NULL,
	[guest_team] [int] NOT NULL,
	[host_goals] [int] NOT NULL,
	[guest_goals] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teams]    Script Date: 16/1/2023 23:51:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teams](
	[team_id] [int] NOT NULL,
	[team_name] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (1, 30, 20, 1, 0)
INSERT [dbo].[matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (2, 10, 20, 1, 2)
INSERT [dbo].[matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (3, 20, 50, 2, 2)
INSERT [dbo].[matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (4, 10, 30, 1, 0)
INSERT [dbo].[matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (5, 30, 50, 0, 1)
GO
INSERT [dbo].[teams] ([team_id], [team_name]) VALUES (10, N'GIVE')
INSERT [dbo].[teams] ([team_id], [team_name]) VALUES (20, N'NEVER')
INSERT [dbo].[teams] ([team_id], [team_name]) VALUES (30, N'YOU')
INSERT [dbo].[teams] ([team_id], [team_name]) VALUES (40, N'UP')
INSERT [dbo].[teams] ([team_id], [team_name]) VALUES (50, N'GONA')
GO
/****** Object:  Index [UQ__matches__9D7FCBA257F887CE]    Script Date: 16/1/2023 23:51:24 ******/
ALTER TABLE [dbo].[matches] ADD UNIQUE NONCLUSTERED 
(
	[match_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__teams__F82DEDBD2E0F2C08]    Script Date: 16/1/2023 23:51:24 ******/
ALTER TABLE [dbo].[teams] ADD UNIQUE NONCLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
