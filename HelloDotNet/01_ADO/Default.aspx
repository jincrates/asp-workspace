<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HelloDotNet._01_ADO.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ADO.NET 개요</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ADO.NET 데이터베이스 프로그래밍</h1>
            <p>ADO.NET은 응용 프로그램에서 데이터베이스 프로그래밍을 도와주는 클래스들의 집합을 의미한다.<br />
               (VSCode와 SQL Server를 연결해주는 역할)</p>
            <ul>
                <li><a href="Ex01_SqlConnection.aspx">SqlConnection 클래스</a></li>
                <li><a href="Ex02_SqlCommand.aspx">SqlCommand 클래스</a></li>
                <li><a href="Ex03_SqlDataReader.aspx">SqlDataReader 클래스</a></li>
                <li><a href="Ex04_SqlDataAdapter.aspx">SqlDataAdapter와 DataSet 클래스</a></li>
                <li><a href="Ex05_SqlTransaction.aspx">SqlTransaction 클래스</a></li>
            </ul>
        </div>
    </form>
</body>
</html>
