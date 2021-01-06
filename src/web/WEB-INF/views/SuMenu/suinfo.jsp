<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SuInfo</title>
</head>
<script type="text/javascript">
    function cart() {
        var optid = document.getElementById("optid").value;
        var noid = document.getElementById("noid").value;
        var img = document.getElementById("img").value;
        var price = document.getElementById("price").value;
        var name = document.getElementById("name").value;

        var url = "/SuMenu/sutoolcart.do?no="+noid+"&img="
            +img+"&price="+price+"&name="+name+"&optid="+optid;
        location.href=url;
    }


</script>

<body>
    <h2>product Info</h2>

    <form action="/SuMenu/sutoolbuy.do" method="post">
        <table>
            <c:forEach var="list" items="${list}">
                <tr>
                    <td>
                        품명
                    </td>
                    <td>${list.name}</td>
                </tr>
                <tr>
                    <td>제작사</td>
                    <td colspan="2">${list.info}</td>
                </tr>
                <tr>
                    <td>자료</td>
                    <td>
                        ${list.img}
                    </td>
                </tr>
                <tr>
                    <td>구매 수량</td>
                    <td>
                        <select name="optid" id="optid">
                            <option value="10">10</option>
                            <option value="20">20</option>
                            <option value="30">30</option>
                            <option value="40">40</option>
                            <option value="50">50</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>금액</td>
                    <td>${list.price} 원</td>
                </tr>
                <tr>
                    <td>
                        <input type="hidden" name="noid" id="noid" value="${list.no}">
                        <input type="hidden" name="img" id="img" value="${list.img}">
                        <input type="hidden" name="price" id="price" value="${list.price}">
                        <input type="hidden" name="name" id="name" value="${list.name}">

                        <input type="button" onclick="location.href='/SuMenu/sumenu.do'" value="목록보기">
                        <input type="button" onclick="cart()" value="장바구니 담기">
                        <input type="submit" value="구매">
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>




</body>
</html>
