<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HelloDotNet._03_PostBack.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PostBack 개요</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PostBack</h1>
            <p>다시 게시(PostBack)란 동일한 웹 페이지를 다시 재요청하는 요청방식을 말한다.<br />
               웹 폼의 이벤트 실행 순서와 PostBack를 제대로 이해해야 한다.(중요)
            </p>
            <ul>
                <li><a href="Ex01_EventHandler.aspx">웹 폼의 이벤트 처리기(EventHandler)</a></li>
                <li><a href="Ex02_PostBack.aspx">PostBack 예제1</a></li>
                <li><a href="Ex03_PostBack.aspx">PostBack 예제2</a></li>
                <li><a href="Ex04_PostBack.aspx">PostBack 예제3(__doPostBack)</a></li>
            </ul>
        </div>
    </form>
</body>
</html>
