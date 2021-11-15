<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01_jQuery.aspx.cs" Inherits="HelloDotNet._07_JQuery.Ex01_jQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<!--웹 페이지에 제이쿼리 파일을 로드하는 방법 두 가지-->
<!--1. 제이쿼리 파일을 다운받아 로드하는 방법-->
<!--<script src="/파일경로/제이쿼리파일명.js"></script>-->

<!--2. CDN(Content Delivery Network)을 이용하여 로드하는 방법-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title></title>
    <script type="text/javascript">
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>웹 페이지에 제이쿼리를 파일을 로드하는 방법 두 가지</h2>
            <h4>1. 제이쿼리 파일을 다운받아 로드하는 방법</h4>
            <p>
                <script src="/파일경로/제이쿼리파일명.js"></script>
            </p>
            <h4>2. CDN(Content Delivery Network)을 이용하여 로드하는 방법</h4>
            <p>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            </p>
        </div>
    </form>
</body>
</html>
