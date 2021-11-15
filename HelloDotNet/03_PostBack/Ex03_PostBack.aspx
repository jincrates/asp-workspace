<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex03_PostBack.aspx.cs" Inherits="HelloDotNet._03_PostBack.Ex03_PostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            이름 : <asp:TextBox ID="txtName" runat="server" />
            <br />
            나이 : <asp:TextBox ID="txtAge" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnSend" runat="server" Text="보내기" OnClick="btnSend_Click" />
        </div>
    </form>
</body>
</html>
