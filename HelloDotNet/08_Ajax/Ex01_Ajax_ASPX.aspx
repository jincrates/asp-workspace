<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01_Ajax_ASPX.aspx.cs" Inherits="HelloDotNet._08_Ajax.Ex01_Ajax_ASPX_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title></title>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnLogin").on("click", function () {
                fnLogin();
            });

            function fnLogin() {
                var userId = $("#userId").val();    
                var userPwd = $("#userPwd").val();    
                var params = {
                    "id": userId,
                    "pwd": userPwd
                };
                
                // Ajax 활용 - ASPX
                $.ajax({
                    type: "post",
                    url: "AjaxData/AjaxData.aspx/login",
                    data: JSON.stringify(params),
                    dataType: 'json',
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {

                    },
                    error: function (error) {
                        console.log(error);
                    }
                });
            };
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>ASPX 파일을 이용한 Ajax 예제</h2>
            <table>
                <tr>
                    <td>ID:</td>
                    <td>
                        <input type="text" id="userId" placeholder="아이디를 입력하세요" />
                    </td>
                </tr>
                <tr>
                    <td>PW:</td>
                    <td>
                        <input type="password" id="userPwd"  placeholder="비밀번호를 입력하세요" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="button" id="btnLogin" style="width: 100%">로그인</button>
                    </td>
                </tr>
            </table>
        </div>  
    </form>
</body>
</html>
