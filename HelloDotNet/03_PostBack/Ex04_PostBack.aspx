<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex04_PostBack.aspx.cs" Inherits="HelloDotNet._03_PostBack.Ex04_PostBack" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        window.onload = function () {
            var btn = document.getElementById("btnSend");
            btn.addEventListener('click', function () {
                fnClick();
            });
        }

        function fnClick() {
            var arg = document.getElementById("txtValue").value;

            __doPostBack("btnPostBack", arg);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            값을 입력하세요: <asp:TextBox ID="txtValue" runat="server" />
            <br />
            <br />
            <button type="button" id="btnSend">보내기</button>
            <asp:LinkButton ID="btnPostBack" runat="server" OnClick="btnPostBack_Click" />
        </div>
    </form>
</body>
</html>
