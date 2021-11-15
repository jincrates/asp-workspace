USE [HelloSQL]
GO

/****** Object:  Table [dbo].[T_BOARD]    Script Date: 2021-01-31 坷饶 7:38:10 ******/
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

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'炼雀荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_BOARD', @level2type=N'COLUMN',@level2name=N'bCount'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'瘩臂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_BOARD', @level2type=N'COLUMN',@level2name=N'cID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'梅何颇老id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_BOARD', @level2type=N'COLUMN',@level2name=N'pID'
GO





SELECT * FROM T_BOARD WITH(NOLOCK)

BEGIN TRAN
--INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格1','郴侩1','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格2','郴侩2','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格3','郴侩3','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格4','郴侩4','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格5','郴侩5','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格6','郴侩6','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格7','郴侩7','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格8','郴侩8','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格9','郴侩9','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格10','郴侩10','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格11','郴侩11','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格12','郴侩12','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格13','郴侩13','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格14','郴侩14','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格15','郴侩15','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格16','郴侩16','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格17','郴侩17','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格18','郴侩18','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格19','郴侩19','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格20','郴侩20','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格21','郴侩21','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格22','郴侩22','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格23','郴侩23','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格24','郴侩24','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格25','郴侩25','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格26','郴侩26','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格27','郴侩27','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格28','郴侩28','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格29','郴侩29','user01',0)
INSERT INTO T_BOARD(Title,Content, Write, bCount) VALUES('力格30','郴侩30','user01',0)


commit