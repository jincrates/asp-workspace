﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01_SqlConnection.aspx.cs" Inherits="HelloDotNet._01_ADO.Ex01_SqlConnection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SqlConnection 클래스</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnSqlConnection" runat="server" 
                Text="SQL Server에 연결하기" OnClick="btnSqlConnection_Click"/>
            <hr />
            <asp:Label ID="lblDisplay" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
