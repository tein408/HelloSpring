<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>SutoolBuy</title>
</head>
<body>
    <h2>결제 완료 페이지</h2>
    <table>
        <tr>
            <td>품명</td>
            <td>자료</td>
            <td>수량</td>
            <td>가격</td>
            <td>총금액</td>
        </tr>
        <c:set var="total" value="${0}"/>
        <c:if test="${sessionScope.cart != null}">
            <c:forEach var="item" items="${sessionScope.cart.itemlist}">
                <tr>
                    <td>${item.name}</td>
                    <td>${item.img}</td>
                    <td>${item.optid}</td>
                    <td>${item.price}</td>
                    <td>${item.price*item.optid}</td>
                </tr>
            </c:forEach>
        </c:if>
        <c:set var="total" value="${total + item.price*item.optid}"/>
        <tr>
            <td colspan="5">총 결제 금액 : ${total} 원</td>
        </tr>
        <tr>
            <td colspan="5">
                <input type="button" onclick="location.href='cartAlldel.do'" value="계산완료하기">
                <input type="button" onclick="location.href='/main/index.do'" value="취소하기">
            </td>
        </tr>
    </table>

</body>
</html>
