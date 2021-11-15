<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01_UpdatePanel.aspx.cs" Inherits="HelloDotNet._04_UpdatePanel.Ex01_UpdatePanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>UpdatePanel</title>
</head>
<body>
    <form id="form1" runat="server">
        <!--UpdatePanel을 사용하기 위해서는 ScriptManager를 지정해야한다.-->
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div id="colorArea" runat="server" style="border: 1px solid black; width: 200px; height: 100px;">
                    </div>
                    Color: <asp:Label ID="lblColor" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnChangeColor" runat="server" Text="변경" OnClick="btnChangeColor_Click"/>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
