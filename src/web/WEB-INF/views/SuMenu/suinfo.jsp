<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SuInfo</title>
</head>
<body>
    <h2>product Info</h2>
    <c:forEach var="list" items="${list}">
    <form action="sutoolbuy.do" method="post">
        <table>

            <tr>
                <td>
                    <span>file : ${list.img}</span>
                </td>
                <td>
                    <span>품명</span>
                </td>
                <td>${list.name}</td>
            </tr>
            <tr>
                <td>구매 수량</td>
                <td>
                    <select>
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
                    <input type="hidden" name="no" id="no" value="${list.no}">
                    <input type="hidden" name="img" id="img" value="${list.img}">
                    <input type="hidden" name="price" id="price" value="${list.price}">
                    <input type="hidden" name="name" id="name" value="${list.name}">

                    <input type="button" onclick="location.href='/SuMenu/sumenu.do'" value="목록보기">
                    <input type="button" onclick="cart()" value="장바구니 담기">
                    <input type="submit" value="구매">
                </td>
            </tr>

        </table>
    </form>

<p>
    <hr>
    <b>상세 보기</b>
    <p>${list.info}</p>
</p>
    </c:forEach>

</body>
</html>
