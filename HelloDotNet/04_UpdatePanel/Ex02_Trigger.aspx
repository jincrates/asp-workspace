<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex02_Trigger.aspx.cs" Inherits="HelloDotNet._04_UpdatePanel.Ex02_Trigger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!--UpdatePanel을 사용하기 위해서는 ScriptManager를 지정해야한다.-->
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <div style="border: 1px solid black; width: 300px; height: 200px;">
                    &nbsp;<span>Update Panel (IN)</span>
                    <br />
                    <br />
                    <div id="colorArea" runat="server" style="border: 1px solid black; width: 200px; height: 100px; margin: 0 auto; ">
                        &nbsp;Color: <asp:Label ID="lblColor" runat="server"></asp:Label>
                    </div>
                    <br />
                    &nbsp;<asp:Button ID="btnChangeColor" runat="server" Text="변경" OnClick="btnChangeColor_Click"/>
                </div>
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnPBT"/>
                    <asp:AsyncPostBackTrigger  ControlID="btnAPBT"/>
                </Triggers>
            </asp:UpdatePanel>
        </div>
        <br />
        <span>Update Panel (OUT)</span>
        <br />
        <asp:Button ID="btnPBT" runat="server" Text="PostbBackTrigger" OnClick="btnPBT_Click" />
        <asp:Button ID="btnAPBT" runat="server" Text="AsyncPostbBackTrigger" onclick="btnAPBT_Click"/>
    </form>
</body>
</html>
