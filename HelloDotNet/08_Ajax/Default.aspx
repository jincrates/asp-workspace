<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HelloDotNet._08_Ajax.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Ajax(Asynchronous JavaScript and XML)</h1>
            <div style="width: 70%">
                Ajax는 Asynchronous JavaScript and XML의 약어로서 웹 서버와 비동기적으로 데이터 통신을 할 때 사용하는 웹 개발 기법을 말한다.
                <br />
                <br />
                <b>동기적 방식</b>으로 작동되는 기존의 웹 응용 프로그램 모델은 사용자의 요청이 서버로 보내지면 그에 대한 응답을 받기 전까지는 다른 작업을 수행할 수 없는 구조를 가진다.<br />
                <br />
                <b>비동기적 방식</b>으로 작동되는 Ajax 웹 응용 프로그램 모델은 사용자의 요청에 대한 응답을 받지 않은 상태라고 하더라도 다른 요청을 할 수 있는 좀 더 유연한 구조를 가진다.
                <br />
                <br />
                Ajax는 요청에 대한 응답을 기다리지 않고 웹 브라우저의 화면 뒤에서 웹 서버와 데이터 통신을 하기 때문에 Ajax를 사용하면 웹 페이지 전체를 다시 로딩할 필요없이(화면의 깜빡임 없이) 웹 페이지의 특정 부분만을 
                업데이트할 수 있게 된다.
            </div>
            <ul>
                <li><a href="Ex01_Ajax_ASPX.aspx">ASPX 파일을 이용한 Ajax 예제</a></li>
                <li><a href="Ex02_Ajax_ASMX.aspx">ASMX 파일을 이용한 Ajax 예제</a></li>
            </ul>
        </div>
    </form>
</body>
</html>
