<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>장바구니 확인</h2>

    <table>
        <tr>
            <td>품명</td>
            <td>자료</td>
            <td>수량</td>
            <td>가격</td>
            <td>총금액</td>
            <td>취소</td>
        </tr>
        <c:forEach var="item" items="${sessionScope.cart.itemlist}">
        <tr>
            <td>${item.name}</td>
            <td>${item.img}</td>
            <td>${item.optid}</td>
            <td>${item.price}</td>
            <td>${item.price*item.optid}</td>
            <td>
                <input type="button" value="delete"
                       onclick="location.href='sucartdel.do?no=${item.no}'">
            </td>
        </tr>
        </c:forEach>
        <tr>
            <td>
                <input type="button" onclick="location.href='../main/index.do'" value="목록보기">
                <input type="button" onclick="location.href='/SuMenu/sucartbuy.do'" value="구매하기">
            </td>
        </tr>
    </table>


</body>
</html>
