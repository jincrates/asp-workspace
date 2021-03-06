USE [HelloSQL]
GO

/****** Object:  Table [dbo].[T_BOARD]    Script Date: 2021-01-31 오후 7:38:10 ******/
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

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'조회수' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_BOARD', @level2type=N'COLUMN',@level2name=N'bCount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'댓글id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_BOARD', @level2type=N'COLUMN',@level2name=N'cID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'첨부파일id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_BOARD', @level2type=N'COLUMN',@level2name=N'pID'
GO





SELECT * FROM T_BOARD WITH(NOLOCK)

BEGIN TRAN
--INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목1','내용1','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목2','내용2','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목3','내용3','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목4','내용4','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목5','내용5','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목6','내용6','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목7','내용7','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목8','내용8','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목9','내용9','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목10','내용10','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목11','내용11','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목12','내용12','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목13','내용13','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목14','내용14','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목15','내용15','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목16','내용16','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목17','내용17','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목18','내용18','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목19','내용19','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목20','내용20','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목21','내용21','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목22','내용22','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목23','내용23','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목24','내용24','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목25','내용25','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목26','내용26','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목27','내용27','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목28','내용28','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목29','내용29','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('제목30','내용30','user01',0)


commit