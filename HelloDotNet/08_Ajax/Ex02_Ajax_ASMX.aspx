<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex02_Ajax_ASMX.aspx.cs" Inherits="HelloDotNet._08_Ajax.Ex02_Ajax_ASMX_" %>

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

                // Ajax 활용 - ASMX
                $.ajax({
                    type: "POST",
                    url: "AjaxData/AjaxData.asmx/Login",
                    data: JSON.stringify(params),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if (data.d == 1) {
                            alert("로그인 성공");
                        } else {
                            alert("로그인 실패");
                        }
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
            <h2>ASMX 파일을 이용한 Ajax 예제</h2>
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
