<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex04_SqlDataAdapter.aspx.cs" Inherits="HelloDotNet._01_ADO.Ex04_SqlDataAdapter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SqlDataAdapter와 DataSet 클래스</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>이름</th>
                        <th>나이</th>
                        <th>성별</th>
                        <th>등록일</th>
                    </tr>
                </thead>
                <tbody>
                <asp:Repeater ID="userList" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("No") %></td>
                            <td><%# Eval("Name") %></td>
                            <td><%# Eval("Age") %></td>
                            <td><%# Eval("Gender").ToString() == "M" ? "남":"여" %></td>
                            <td><%# Eval("InsertDate") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
