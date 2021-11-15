CREATE TABLE T_USER (
	No int not null identity,
	UserID nvarchar(200) not null,
	UserPW nvarchar(200) not null,
	Name nvarchar(50) not null,
	Age int not null,
	Gender nvarchar(2) not null,
	Home nvarchar(50) null,
	Hobby nvarchar(100) null,
	InsertDate DateTime default Getdate() not null,
	UpdateDate DateTime null
)

--DROP TABLE T_USER
SELECT * FROM T_USER
SELECT No, Name, Age, Gender, InsertDate FROM T_USER