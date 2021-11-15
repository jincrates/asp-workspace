<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex01_JavaScript.aspx.cs" Inherits="HelloDotNet._06_JavaScript.Ex01_JavaScript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function printValue() {
            var name = document.getElementsByTagName("input")[0].value;
            var product = document.getElementById("pName").value;
            var price = document.getElementsByName("price").value;

            area.innerHTML += "고객명: " + name + "<br />";
            area.innerHTML += "상품명: " + product + "<br />";
            area.innerHTML += "가격: " + price + "<br />";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>HTML 접근 테스트</h2>
            <p>단, 구매자는 tag 이름으로 접근, 상품명은 id로 접근, 구매가격은 name 값으로 접근하기</p>
            <br />
            <label>구매자: </label>
            <input type="text" placeholder="구매자의 이름을 입력하세요." />
            <br />
            <label>상품명: </label>
            <input type="text" id="pName" placeholder="구매 상품명을 입력하세요." />
            <br />
            <label>가격: </label>
            <input type="text" name="price" placeholder="구매 가격을 입력하세요." />
            <br />
            <br />
            <button type="button" onclick="printValue();">입력값 출력하기</button>
            <div id="area"></div>
        </div>
    </form>
</body>
</html>
