USE [HelloSQL]
GO

/****** Object:  Table [dbo].[T_BOARD]    Script Date: 2021-01-31 ���� 7:38:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[T_BOARD](
	[bID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [nvarchar](max) NULL,
	[Write] [nvarchar](200) NOT NULL,
	[bCount] [int] NOT NULL,
	[cID] [int] NULL,
	[pID] [int] NULL,
	[InsertDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_BOARD] ADD  CONSTRAINT [DF_T_BOARD_InsertDate]  DEFAULT (getdate()) FOR [InsertDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ȸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_BOARD', @level2type=N'COLUMN',@level2name=N'bCount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_BOARD', @level2type=N'COLUMN',@level2name=N'cID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'÷������id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_BOARD', @level2type=N'COLUMN',@level2name=N'pID'
GO





SELECT * FROM T_BOARD WITH(NOLOCK)

BEGIN TRAN
--INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����1','����1','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����2','����2','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����3','����3','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����4','����4','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����5','����5','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����6','����6','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����7','����7','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����8','����8','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����9','����9','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����10','����10','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����11','����11','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����12','����12','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����13','����13','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����14','����14','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����15','����15','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����16','����16','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����17','����17','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����18','����18','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����19','����19','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����20','����20','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����21','����21','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����22','����22','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����23','����23','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����24','����24','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����25','����25','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����26','����26','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����27','����27','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����28','����28','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����29','����29','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('����30','����30','user01',0)


commit