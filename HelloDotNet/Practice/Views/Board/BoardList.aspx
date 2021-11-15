<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoardList.aspx.cs" Inherits="HelloDotNet.Practice.Views.Board.BoardList" %>

<%@ Register Src="~/Practice/Views/Board/ucPage.ascx" TagPrefix="uc1" TagName="ucPage" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <h2>게시판 리스트</h2>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table border="1">
                        <tr>
                            <td>번호</td>
                            <td>제목</td>
                            <td>작성자</td>
                            <td>작성일</td>
                        </tr>
                        <asp:Repeater ID="boardList" runat="server">
                            <ItemTemplate>
                                <tr>        
                                    <td><%# Eval("bID")%></td>
                                    <td><%# Eval("Title")%></td>
                                    <td><%# Eval("Write")%></td>
                                    <td><%# Eval("InsertDate", "{0:yyyy-MM-dd}") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            <!--<uc1:ucPage runat="server" ID="ucPage" />-->

            <!--페이징 처리-->
            <div class="">
                <button type="button" id="preEnd" class="first"><<</button>
                <button type="button" id="pre" class="prev"><</button>

                <span id="pageList">
                    <asp:Repeater ID="rptPage" runat="server">
                        <ItemTemplate>
                            <a class="" id=""></a>
                        </ItemTemplate>
                    </asp:Repeater>
                </span>
                <asp:HiddenField ID="hdnPageCnt" runat="server" />
                <asp:HiddenField ID="hdnBtnPageCnt" runat="server" />
                <button type="button" id="next" class="next">></button>
	            <button type="button" id="nextEnd" class="last">>></button>
            </div>
        </div>
    </form>
</body>
</html>
