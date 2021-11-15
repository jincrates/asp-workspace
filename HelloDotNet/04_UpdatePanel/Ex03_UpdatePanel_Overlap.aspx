<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex03_UpdatePanel_Overlap.aspx.cs" Inherits="HelloDotNet._04_UpdatePanel.Ex03_UpdatePanel_Overlap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--UpdatePanel을 사용하기 위해서는 ScriptManager를 지정해야한다.-->
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div>
                <!--Parent UpdatePanel-->
                <asp:UpdatePanel ID="ParentUP" runat="server"  UpdateMode="Conditional">
                    <ContentTemplate>
                        <div style="border: 1px solid black; width: 300px; height: 150px;">
                            <span>Parent Update Panel (IN)</span>
                            <asp:Button ID="btnParent" runat="server" Text="Parent" OnClick="btnParent_Click"/>
                            <br />
                            <asp:Label ID="lblParent" runat="server"></asp:Label>
                            <br /><br />
                            <!--Child UpdatePanel-->
                            <asp:UpdatePanel ID="ChildUP" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div style="border: 1px solid black; width: 250px; height: 50px; margin:0 auto">
                                        <span>Child Update Panel (IN)</span>
                                        <asp:Button ID="btnChild" runat="server" Text="Child" OnClick="btnChild_Click" />
                                        <br />
                                        <asp:Label ID="lblChild" runat="server"></asp:Label>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <!--Child UpdatePanel-->
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <!--Parent UpdatePanel-->
            </div>
        </div>
    </form>
</body>
</html>
